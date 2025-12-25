-- Remove WhatsApp group chat columns from games table
ALTER TABLE games
    DROP COLUMN IF EXISTS whats_app_group_chat_link,
    DROP COLUMN IF EXISTS use_whats_app_group_chat_bot;

