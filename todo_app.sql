DROP user IF EXISTS "michael";

CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';
-- VALUES ('Michael', HASHBYTES('SHA2_512', 'stonebreaker'));

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;
--6

DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks(
  "id" serial NOT NULL PRIMARY KEY,
  "title" character varying(255) NOT NULL,
  "description" text NULL,
  "created_at" timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
  "update_at" timestamp WITHOUT TIME ZONE NULL,
  "completed" boolean NOT NULL DEFAULT false
);

ALTER TABLE tasks DROP COLUMN completed;

ALTER TABLE tasks ADD COLUMN completed_at timestamp DEFAULT NULL;

ALTER TABLE tasks ADD COLUMN update_at timestamp NOT NULL DEFAULT now();

INSERT INTO tasks (title, description, update_at)
VALUES ('Study SQL', 'Complete this exercise', now());

INSERT INTO tasks (title, description)
VALUES ('Study PostgreSQL', 'Read all the documentation');

-- --vi
-- SELECT title
-- FROM tasks
-- WHERE completed_at IS NULL;

--vii
UPDATE tasks
SET completed_at = now()
WHERE title = 'Study SQL';

-- --viii
-- SELECT title, description
-- FROM tasks
-- WHERE completed_at IS NULL;

-- --ix
-- SELECT *
-- FROM tasks
-- ORDER BY created_at DESC;

--x
INSERT INTO tasks (title, description)
VALUES ('mistake 1', 'a test entry');






\dt


SELECT * FROM tasks;