CREATE TABLE IF NOT EXISTS chats (
 id BIGINT PRIMARY KEY,
 chat_id BIGINT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS links (
 id BIGINT PRIMARY KEY,
 chat_id BIGINT NOT NULL,
 link_url VARCHAR ( 255 ) NOT NULL,
 datetimestamp TIMESTAMP NOT NULL,
 FOREIGN KEY (chat_id) REFERENCES chats (chat_id)
);


