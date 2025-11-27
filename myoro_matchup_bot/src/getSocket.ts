import { WASocket } from '@whiskeysockets/baileys';

// Global variable to store the active WhatsApp socket connection
let sock: WASocket | null = null;

// Set the socket (internal use)
export function setSocket(socket: WASocket) {
  sock = socket;
}

// Export function to access the socket from other modules
export function getSocket(): WASocket | null {
  return sock;
}

