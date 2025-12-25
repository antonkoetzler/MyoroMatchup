-- Add teams and global substitutes support

-- Teams table
CREATE TABLE teams (
    id BIGSERIAL PRIMARY KEY,
    game_id BIGINT NOT NULL,
    index INTEGER NOT NULL,
    CONSTRAINT fk_teams_game FOREIGN KEY (game_id) REFERENCES games(id)
);

-- Team players join table (ManyToMany)
CREATE TABLE team_players (
    team_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (team_id, user_id),
    CONSTRAINT fk_team_players_team FOREIGN KEY (team_id) REFERENCES teams(id),
    CONSTRAINT fk_team_players_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Team substitutes join table (ManyToMany)
CREATE TABLE team_substitutes (
    team_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (team_id, user_id),
    CONSTRAINT fk_team_substitutes_team FOREIGN KEY (team_id) REFERENCES teams(id),
    CONSTRAINT fk_team_substitutes_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Game global substitutes join table (ManyToMany)
CREATE TABLE game_global_substitutes (
    game_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (game_id, user_id),
    CONSTRAINT fk_game_global_substitutes_game FOREIGN KEY (game_id) REFERENCES games(id),
    CONSTRAINT fk_game_global_substitutes_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create indexes for better query performance
CREATE INDEX idx_teams_game_id ON teams(game_id);
CREATE INDEX idx_team_players_team_id ON team_players(team_id);
CREATE INDEX idx_team_players_user_id ON team_players(user_id);
CREATE INDEX idx_team_substitutes_team_id ON team_substitutes(team_id);
CREATE INDEX idx_team_substitutes_user_id ON team_substitutes(user_id);
CREATE INDEX idx_game_global_substitutes_game_id ON game_global_substitutes(game_id);
CREATE INDEX idx_game_global_substitutes_user_id ON game_global_substitutes(user_id);

