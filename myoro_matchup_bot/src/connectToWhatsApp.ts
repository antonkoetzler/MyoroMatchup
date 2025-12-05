// Import Baileys core functions for WhatsApp connection
import makeWASocket, {
  DisconnectReason,
  useMultiFileAuthState,
  WASocket,
  GroupParticipantUpdateEvent,
  ConnectionState,
  BaileysEventMap,
} from '@whiskeysockets/baileys';
import { Boom } from '@hapi/boom';
import qrcode from 'qrcode-terminal';
import { setSocket } from './getSocket.js';

// Main function to establish and maintain WhatsApp connection
export async function connectToWhatsApp() {
  // Load saved authentication state from 'auth_info' folder, or create new one
  const { state, saveCreds } = await useMultiFileAuthState('auth_info');

  // Create WhatsApp socket connection with authentication state
  const sock = makeWASocket({
    auth: state,
  });

  // Set the socket in the getSocket module
  setSocket(sock);

  // Auto-save credentials whenever they update (so QR code isn't needed on restart)
  sock.ev.on('creds.update', saveCreds);

  // Handle connection status changes (connecting, connected, disconnected, QR code)
  sock.ev.on('connection.update', (update: Partial<ConnectionState>) => {
    const { connection, lastDisconnect, qr } = update;

    // Display QR code in terminal when authentication is needed
    if (qr) {
      qrcode.generate(qr, { small: true });
    }

    // Handle disconnection - reconnect unless explicitly logged out
    if (connection === 'close') {
      const shouldReconnect =
        (lastDisconnect?.error as Boom)?.output?.statusCode !==
        DisconnectReason.loggedOut;
      if (shouldReconnect) {
        connectToWhatsApp();
      }
    } else if (connection === 'open') {
      // Connection successful
      console.log('✅ Connected to WhatsApp');
    }
  });

  // Handle incoming messages
  sock.ev.on('messages.upsert', async (m: BaileysEventMap['messages.upsert']) => {
    const msg = m.messages[0];
    // Only respond to new messages (not history sync) that aren't from the bot itself
    if (!msg.key.fromMe && m.type === 'notify') {
      // Send "pong" response (testing/example)
      await sock.sendMessage(msg.key.remoteJid!, { text: 'pong' });
    }
  });

  // Handle group participant updates (when bot is added/removed from groups)
  sock.ev.on('group-participants.update', async (update: GroupParticipantUpdateEvent) => {
    const { id: groupId, participants, action } = update;

    if (!groupId) return;

    // Get bot's own JID (phone number) - format: 1234567890@s.whatsapp.net
    const botJid = sock.user?.id;
    if (!botJid) return;

    // Normalize JIDs for comparison (remove any formatting differences)
    const normalizeJid = (jid: string) => jid.split('@')[0];
    const botJidNormalized = normalizeJid(botJid);

    // Check if bot was added to the group
    const botWasAdded = action === 'add' &&
      participants.some((p: string) => normalizeJid(p) === botJidNormalized);

    if (botWasAdded) {
      console.log(`🤖 Bot added to group: ${groupId}`);

      // Send welcome message to the group
      try {
        await sock.sendMessage(groupId, {
          text: 'Hello, Group Chat!'
        });
        console.log(`✅ Welcome message sent to group: ${groupId}`);
      } catch (error) {
        console.error(`❌ Failed to send welcome message:`, error);
      }
    }

    // Optional: Handle when bot is removed
    const botWasRemoved = action === 'remove' &&
      participants.some((p: string) => normalizeJid(p) === botJidNormalized);
    if (botWasRemoved) {
      console.log(`👋 Bot removed from group: ${groupId}`);
    }
  });
}

