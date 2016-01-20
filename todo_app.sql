DROP user IF EXISTS "michael";

CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';
-- VALUES ('Michael', HASHBYTES('SHA2_512', 'stonebreaker'));

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;


