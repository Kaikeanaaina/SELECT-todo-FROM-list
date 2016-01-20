DROP user IF EXISTS "michael";

CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';
-- VALUES ('Michael', HASHBYTES('SHA2_512', 'stonebreaker'));

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;
--6

DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks
(id serial NOT NULL,
PRIMARY KEY ("id"),
title character varying(255) NOT NULL,
description text NULL,
created_at timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
update_at timestamp WITHOUT TIME ZONE NULL,
completed boolean NOT NULL DEFAULT false);

--ALTER TABLE tasks DROP COLUMN completed;

-- ALTER TABLE tasks ADD COLUMN completed_at timestamp DEFAULT NULL;

-- ALTER TABLE tasks ADD COLUMN update_at timestamp NOT NULL;

-- ALTER TABLE tasks ADD COLUMN update_at timestamp DEFAULT now();










\dt

SELECT * FROM tasks;