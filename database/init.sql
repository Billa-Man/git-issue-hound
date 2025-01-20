-- BOOKMARKED REPOSITORIES
CREATE TABLE IF NOT EXISTS bookmarkedrepositories (
    id SERIAL PRIMARY KEY,
    website VARCHAR(255) NOT NULL,
    user_id INT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(website)
);

-- BOOKMARKED ISSUES
CREATE TABLE IF NOT EXISTS bookmarkedissues (
    id SERIAL PRIMARY KEY,
    website VARCHAR(255) NOT NULL,
    user_id INT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(website)
);

-- CHAT HISTORY
CREATE TABLE IF NOT EXISTS chat_history (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    chat JSONB NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(title)
);