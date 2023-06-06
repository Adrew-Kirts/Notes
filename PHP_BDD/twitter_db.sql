-- SQLite
PRAGMA foreign_keys = ON;

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
    created_at DATE,
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
    created_at DATE,
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


INSERT INTO tweets (content, created_at, user_id) VALUES
    ('I just learned how to make a pie from scratch!', 2023-06-25, 1),
    ('I love to cook and bake, and I have a recipe book full of delicious recipes!', 2023-06-25, 2),
    ('I am a fitness enthusiast and I work out regularly to stay healthy and fit!', 2023-06-25, 3),
    ('I am a music lover and I enjoy listening to music all day long!', 2023-06-25, 1),
    ('I am a book lover and I love reading books all the time!', 2023-06-25, 2),
    ('I am a travel enthusiast and I love exploring new places and cultures!', 2023-06-25, 3),
    ('I am a foodie and I love trying new foods and experimenting with different cuisines!', 2023-06-25, 1),
    ('I am a sports enthusiast and I love watching sports and playing games!', 2023-06-25, 2),
    ('I am a fashion enthusiast and I love shopping for clothes and accessories!', 2023-06-25, 3),
    ('I am a DIY enthusiast and I love making things from scratch!', 2023-06-25, 1),
    ('I am a yoga enthusiast and I love meditating and practicing yoga!', 2023-06-25, 2),
    ('I am a gardener and I love growing plants and creating beautiful gardens!', 2023-06-25, 3),
    ('I am a home cook and I love cooking for my family and friends!', 2023-06-25, 1),
    ('I am a dog lover and I love spending time with my furry friends!', 2023-06-25, 2),
    ('I am a cat lover and I love spending time with my fluffy friends!', 2023-06-25, 3);

INSERT INTO tweets_users (user_id, tweet_id, created_at) VALUES
    