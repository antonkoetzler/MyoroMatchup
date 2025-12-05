-- Initial database schema
-- Generated from JPA entities

-- Users table
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    state VARCHAR(255),
    city VARCHAR(255),
    is_subscribed BOOLEAN NOT NULL,
    visibility VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL
);

-- Games table
CREATE TABLE games (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    sport VARCHAR(255) NOT NULL,
    frequency VARCHAR(255) NOT NULL,
    primary_day VARCHAR(255) NOT NULL,
    bi_weekly_day VARCHAR(255),
    primary_start_time TIME NOT NULL,
    primary_end_time TIME NOT NULL,
    bi_weekly_start_time TIME,
    bi_weekly_end_time TIME,
    monthly_price DOUBLE PRECISION NOT NULL,
    drop_in_price DOUBLE PRECISION NOT NULL,
    min_age INTEGER NOT NULL,
    max_age INTEGER NOT NULL,
    location_name VARCHAR(255) NOT NULL,
    location_city VARCHAR(255) NOT NULL,
    location_country VARCHAR(255),
    visibility VARCHAR(255) NOT NULL,
    profile_picture VARCHAR(255),
    banner VARCHAR(255),
    whats_app_group_chat_link VARCHAR(255),
    use_whats_app_group_chat_bot BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT fk_games_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Game players join table (ManyToMany)
CREATE TABLE game_players (
    game_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (game_id, user_id),
    CONSTRAINT fk_game_players_game FOREIGN KEY (game_id) REFERENCES games(id),
    CONSTRAINT fk_game_players_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- User stats base table (inheritance)
CREATE TABLE user_stats (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    sport VARCHAR(255) NOT NULL,
    rating INTEGER NOT NULL,
    sport_type VARCHAR(255) NOT NULL,
    CONSTRAINT fk_user_stats_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Football user stats table
CREATE TABLE football_user_stats (
    id BIGINT PRIMARY KEY,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    striking INTEGER NOT NULL,
    skills INTEGER NOT NULL,
    CONSTRAINT fk_football_user_stats_id FOREIGN KEY (id) REFERENCES user_stats(id)
);

-- Futsal user stats table
CREATE TABLE futsal_user_stats (
    id BIGINT PRIMARY KEY,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    striking INTEGER NOT NULL,
    skills INTEGER NOT NULL,
    CONSTRAINT fk_futsal_user_stats_id FOREIGN KEY (id) REFERENCES user_stats(id)
);

-- Fut7 user stats table
CREATE TABLE fut7_user_stats (
    id BIGINT PRIMARY KEY,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    striking INTEGER NOT NULL,
    skills INTEGER NOT NULL,
    CONSTRAINT fk_fut7_user_stats_id FOREIGN KEY (id) REFERENCES user_stats(id)
);

-- Volleyball user stats table
CREATE TABLE volleyball_user_stats (
    id BIGINT PRIMARY KEY,
    attack INTEGER NOT NULL,
    blocking INTEGER NOT NULL,
    serving INTEGER NOT NULL,
    reception INTEGER NOT NULL,
    CONSTRAINT fk_volleyball_user_stats_id FOREIGN KEY (id) REFERENCES user_stats(id)
);

-- Friend requests table
CREATE TABLE friend_requests (
    id BIGSERIAL PRIMARY KEY,
    requester_id BIGINT NOT NULL,
    recipient_id BIGINT NOT NULL,
    status VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    responded_at TIMESTAMP,
    CONSTRAINT fk_friend_requests_requester FOREIGN KEY (requester_id) REFERENCES users(id),
    CONSTRAINT fk_friend_requests_recipient FOREIGN KEY (recipient_id) REFERENCES users(id),
    CONSTRAINT unique_pending_friend_request UNIQUE (requester_id, recipient_id, status)
);

-- Blocked users table
CREATE TABLE blocked_users (
    id BIGSERIAL PRIMARY KEY,
    blocker_id BIGINT NOT NULL,
    blocked_id BIGINT NOT NULL,
    blocked_at TIMESTAMP NOT NULL,
    CONSTRAINT fk_blocked_users_blocker FOREIGN KEY (blocker_id) REFERENCES users(id),
    CONSTRAINT fk_blocked_users_blocked FOREIGN KEY (blocked_id) REFERENCES users(id),
    CONSTRAINT unique_blocked_user UNIQUE (blocker_id, blocked_id)
);

-- Invitations table
CREATE TABLE invitations (
    id BIGSERIAL PRIMARY KEY,
    game_id BIGINT NOT NULL,
    inviter_id BIGINT NOT NULL,
    invitee_id BIGINT NOT NULL,
    status VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    expires_at TIMESTAMP,
    responded_at TIMESTAMP,
    message VARCHAR(255),
    CONSTRAINT fk_invitations_game FOREIGN KEY (game_id) REFERENCES games(id),
    CONSTRAINT fk_invitations_inviter FOREIGN KEY (inviter_id) REFERENCES users(id),
    CONSTRAINT fk_invitations_invitee FOREIGN KEY (invitee_id) REFERENCES users(id),
    CONSTRAINT unique_pending_invitation UNIQUE (game_id, invitee_id, status)
);

-- Create indexes for better query performance
CREATE INDEX idx_games_user_id ON games(user_id);
CREATE INDEX idx_game_players_game_id ON game_players(game_id);
CREATE INDEX idx_game_players_user_id ON game_players(user_id);
CREATE INDEX idx_user_stats_user_id ON user_stats(user_id);
CREATE INDEX idx_friend_requests_requester_id ON friend_requests(requester_id);
CREATE INDEX idx_friend_requests_recipient_id ON friend_requests(recipient_id);
CREATE INDEX idx_blocked_users_blocker_id ON blocked_users(blocker_id);
CREATE INDEX idx_blocked_users_blocked_id ON blocked_users(blocked_id);
CREATE INDEX idx_invitations_game_id ON invitations(game_id);
CREATE INDEX idx_invitations_inviter_id ON invitations(inviter_id);
CREATE INDEX idx_invitations_invitee_id ON invitations(invitee_id);
