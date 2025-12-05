-- ==========================================
-- SQL DML Statements
-- ==========================================
-- ==========================================
-- SAMPLE DATA INSERTS
-- ==========================================

-- -----------------------------
-- INSERT PLAYERS
-- -----------------------------
INSERT INTO player (nickname) VALUES
('SpeedyLuigi'),
('YoshiMain'),
('BowserBoss'),
('PeachPro'),
('ToadTurbo'),
('DKDrift'),
('ShyGuyGhost'),
('WaluigiTime'),
('BabyMario99'),
('KoopaKing');

-- -----------------------------
-- INSERT TRACKS
-- -----------------------------
INSERT INTO track (name) VALUES
('Mario Kart Stadium'),
('Water Park'),
('Sweet Sweet Canyon'),
('Thwomp Ruins'),
('Rainbow Road'),
('Moo Moo Meadows'),
('Coconut Mall'),
('Wario Stadium'),
('Yoshi Circuit'),
('Baby Park');

-- -----------------------------
-- INSERT RACE RESULTS
-- -----------------------------
INSERT INTO race_result (
    player_id, track_id, race_time_ms, race_date, character_used, vehicle_used
) VALUES

-- Mario Kart Stadium
((SELECT player_id FROM player WHERE nickname='SpeedyLuigi'),
 (SELECT track_id FROM track WHERE name='Mario Kart Stadium'),
 94567, '2025-01-10', 'Luigi', 'Standard Kart'),

((SELECT player_id FROM player WHERE nickname='YoshiMain'),
 (SELECT track_id FROM track WHERE name='Mario Kart Stadium'),
 93210, '2025-01-11', 'Yoshi', 'Pipe Frame'),

((SELECT player_id FROM player WHERE nickname='WaluigiTime'),
 (SELECT track_id FROM track WHERE name='Mario Kart Stadium'),
 91890, '2025-01-21', 'Waluigi', 'Wiggler Kart'),

-- Rainbow Road
((SELECT player_id FROM player WHERE nickname='BowserBoss'),
 (SELECT track_id FROM track WHERE name='Rainbow Road'),
 132876, '2025-01-12', 'Bowser', 'Flame Rider'),

((SELECT player_id FROM player WHERE nickname='PeachPro'),
 (SELECT track_id FROM track WHERE name='Rainbow Road'),
 128450, '2025-01-12', 'Princess Peach', 'Comet Bike'),

((SELECT player_id FROM player WHERE nickname='SpeedyLuigi'),
 (SELECT track_id FROM track WHERE name='Rainbow Road'),
 130210, '2025-01-19', 'Luigi', 'Standard Kart'),

-- Moo Moo Meadows
((SELECT player_id FROM player WHERE nickname='ToadTurbo'),
 (SELECT track_id FROM track WHERE name='Moo Moo Meadows'),
 84321, '2025-01-13', 'Toad', 'Biddybuggy'),

-- Coconut Mall
((SELECT player_id FROM player WHERE nickname='DKDrift'),
 (SELECT track_id FROM track WHERE name='Coconut Mall'),
 101234, '2025-01-14', 'Donkey Kong', 'Standard Bike'),

((SELECT player_id FROM player WHERE nickname='PeachPro'),
 (SELECT track_id FROM track WHERE name='Coconut Mall'),
 99540, '2025-01-20', 'Princess Peach', 'Comet Bike'),

-- Sweet Sweet Canyon
((SELECT player_id FROM player WHERE nickname='ShyGuyGhost'),
 (SELECT track_id FROM track WHERE name='Sweet Sweet Canyon'),
 98765, '2025-01-15', 'Shy Guy', 'Cloud 9'),

-- Wario Stadium
((SELECT player_id FROM player WHERE nickname='WaluigiTime'),
 (SELECT track_id FROM track WHERE name='Wario Stadium'),
 112567, '2025-01-16', 'Waluigi', 'Wiggler Kart'),

-- Baby Park
((SELECT player_id FROM player WHERE nickname='BabyMario99'),
 (SELECT track_id FROM track WHERE name='Baby Park'),
 76543, '2025-01-17', 'Baby Mario', 'Baby Buggy'),

((SELECT player_id FROM player WHERE nickname='ToadTurbo'),
 (SELECT track_id FROM track WHERE name='Baby Park'),
 74890, '2025-01-20', 'Toad', 'Biddybuggy'),

-- Yoshi Circuit
((SELECT player_id FROM player WHERE nickname='KoopaKing'),
 (SELECT track_id FROM track WHERE name='Yoshi Circuit'),
 95678, '2025-01-18', 'Koopa Troopa', 'Mach 8'),

((SELECT player_id FROM player WHERE nickname='YoshiMain'),
 (SELECT track_id FROM track WHERE name='Yoshi Circuit'),
 93450, '2025-01-19', 'Yoshi', 'Pipe Frame');