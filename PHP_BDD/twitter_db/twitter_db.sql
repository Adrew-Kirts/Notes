-- SQLite

DROP TABLE IF EXISTS tweets;
DROP TABLE IF EXISTS hashtags;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tweets_users;
DROP TABLE IF EXISTS hashtags_tweets;
DROP TABLE IF EXISTS users_users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    username VARCHAR(150) NOT NULL UNIQUE,
    email TEXT(150) NOT NULL,
    address VARCHAR(200),
    postal_code INTEGER(10),
    city VARCHAR(150),
    country VARCHAR(150)
);

CREATE TABLE tweets (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    -- limite de char 4000 pour des users payant
    content TEXT(4000),
    created_at DATE DEFAULT (datetime('now','localtime')),
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE hashtags (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    -- limite de char pour un #
    name VARCHAR(255)
);

CREATE TABLE users_users (
    user1_id INTEGER NOT NULL,
    user2_id INTEGER NOT NULL,
    PRIMARY KEY (user1_id, user2_id),
    FOREIGN KEY (user1_id) REFERENCES users(id),
    FOREIGN KEY (user2_id) REFERENCES users(id)
);

CREATE TABLE tweets_users (
    user_id INTEGER NOT NULL,
    tweet_id INTEGER NOT NULL,
    created_at DATE DEFAULT (datetime('now','localtime')),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (tweet_id) REFERENCES tweets(id),
    PRIMARY KEY (user_id, tweet_id),
    UNIQUE (user_id, tweet_id)
);

CREATE TABLE hashtags_tweets (
    hashtag_name INTEGER NOT NULL,
    tweet_id INTEGER NOT NULL,
    FOREIGN KEY (hashtag_name) REFERENCES hashtags(id),
    FOREIGN KEY (tweet_id) REFERENCES tweets(id),
    PRIMARY KEY (hashtag_name, tweet_id),
    UNIQUE (hashtag_name, tweet_id)
);

INSERT INTO users (username, email, address, postal_code, city, country) VALUES 
    ('Adrew88', 'adrewk@mysql.org', '6543 stairway to heaven', 34060, 'LA', 'USA'),
    ('BillyBob', 'billybob@example.com', '123 Main St', 10001, 'New York', 'USA'),
    ('CharlieChap', 'charliechap@gmail.com', '456 Oak Ave', 98765, 'Los Angeles', 'USA');


INSERT INTO tweets (content, user_id) VALUES
    ('I just learned how to make a pie out regularly to stay healthy and fit!', 3),
    ('I am a music lover and I enjoy listening to music all day long!', 1),
    ('I am a book lover and I love reading books all the time!', 2),
    ('I am a travel enthusiast and I love exploring new places and cultures!', 3),
    ('I am a foodie and I love trying new foods and experimenting with different cuisines!', 1),
    ('I am a sports enthusiast and I love watching sports and playing games!', 2),
    ('I am a fashion enthusiast and I love shopping for clothes and accessories!', 3);
 

INSERT INTO tweets_users (user_id, tweet_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (1, 4),
    (2, 5),
    (3, 6),
    (1, 7),
    (2, 8),
    (3, 9);