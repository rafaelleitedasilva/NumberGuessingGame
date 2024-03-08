

CREATE TABLE users(user_id SERIAL PRIMARY KEY, username VARCHAR UNIQUE);
CREATE TABLE games(game_id SERIAL PRIMARY KEY, user_id INT, username VARCHAR UNIQUE, number_of_guesses INT, secret_number INT);