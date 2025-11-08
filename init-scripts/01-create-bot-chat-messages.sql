-- Create chat_messages_history table if not exists
CREATE TABLE IF NOT EXISTS chat_messages_history (
    id CHARACTER(24) PRIMARY KEY NOT NULL,
    session_id CHARACTER(24) NOT NULL,
    sender_id CHARACTER(24) NOT NULL,
    sender_type TEXT NOT NULL,
    message TEXT NOT NULL,
    created_at BIGINT,
    deleted_at BIGINT,
    updated_at BIGINT
);

-- Optional: Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_chat_messages_history_session_id 
    ON chat_messages_history(session_id);

-- Optional: Add comments to document the table
COMMENT ON TABLE chat_messages_history IS 'Stores chat messages between bots and users';
COMMENT ON COLUMN chat_messages_history.id IS 'Unique message identifier (primary key)';
COMMENT ON COLUMN chat_messages_history.session_id IS 'Chat session identifier';
COMMENT ON COLUMN chat_messages_history.sender_id IS 'ID of the message sender';
COMMENT ON COLUMN chat_messages_history.sender_type IS 'Type of sender (bot/user)';
COMMENT ON COLUMN chat_messages_history.message IS 'Message content';
COMMENT ON COLUMN chat_messages_history.created_at IS 'Timestamp when message was created';
COMMENT ON COLUMN chat_messages_history.deleted_at IS 'Timestamp when message was deleted (soft delete)';
COMMENT ON COLUMN chat_messages_history.updated_at IS 'Timestamp when message was last updated';
