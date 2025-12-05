-- ==========================================
-- SQL DDL Statements
-- ==========================================

-- ==========================================
-- RESET (Drop tables in reverse order of dependency)
-- ==========================================
DROP TABLE IF EXISTS race_result CASCADE;
DROP TABLE IF EXISTS track CASCADE;
DROP TABLE IF EXISTS player CASCADE;
-- ==========================================
-- CREATE Tables (in order of dependency)
-- ==========================================

-- ENTITÄT: PLAYER
CREATE TABLE player (
    player_id SERIAL PRIMARY KEY,
    nickname VARCHAR(30) NOT NULL UNIQUE,
    CHECK (char_length(nickname) >= 3)
);

-- ENTITÄT: TRACK
CREATE TABLE track (
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL UNIQUE,
);

-- ENTITÄT: RACE_RESULT
CREATE TABLE race_result (
    race_id SERIAL PRIMARY KEY,
    player_id INT NOT NULL REFERENCES player(player_id)
        ON DELETE CASCADE,
    track_id INT NOT NULL REFERENCES track(track_id)
        ON DELETE CASCADE,
    race_time_ms INT NOT NULL,
    race_date DATE NOT NULL DEFAULT CURRENT_DATE,
    character_used VARCHAR(30) NOT NULL,
    vehicle_used VARCHAR(50) NOT NULL,
    CHECK (race_time_ms BETWEEN 10000 AND 600000)
);

-- Nützliche Indizes für Leaderboard-Abfragen
CREATE INDEX idx_race_result_track_time
    ON race_result (track_id, race_time_ms);

CREATE INDEX idx_race_result_player
    ON race_result (player_id);