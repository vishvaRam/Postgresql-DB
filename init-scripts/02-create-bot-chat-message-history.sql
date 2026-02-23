CREATE TABLE IF NOT EXISTS chat_session_summaries (
    id VARCHAR(14) PRIMARY KEY,
    session_id CHARACTER(14) NOT NULL,
    summary TEXT NOT NULL,
    messages_count INTEGER NOT NULL,
    created_at BIGINT NOT NULL,
    updated_at BIGINT
);

-- Indexes for query performance
CREATE INDEX IF NOT EXISTS idx_session_summaries_session_id 
    ON chat_session_summaries(session_id);

CREATE INDEX IF NOT EXISTS idx_session_summaries_created_at 
    ON chat_session_summaries(created_at);

-- Comments
COMMENT ON TABLE chat_session_summaries IS 'Stores summaries of chat sessions';
COMMENT ON COLUMN chat_session_summaries.id IS 'Unique identifier for the summary record';
COMMENT ON COLUMN chat_session_summaries.session_id IS 'Identifier for the chat session';
COMMENT ON COLUMN chat_session_summaries.summary IS 'Summary of the chat session';
COMMENT ON COLUMN chat_session_summaries.messages_count IS 'Number of messages in the chat session';
COMMENT ON COLUMN chat_session_summaries.created_at IS 'Timestamp when the summary was created';
COMMENT ON COLUMN chat_session_summaries.updated_at IS 'Timestamp when the summary was last updated';
