-- init script
CREATE USER simple_crud_user WITH PASSWORD 'simple_crud_pass';

CREATE DATABASE cellular;
\c cellular;

CREATE SCHEMA cellular;
ALTER DATABASE cellular SET search_path TO cellular;

GRANT ALL PRIVILEGES ON DATABASE cellular TO simple_crud_user;
GRANT ALL PRIVILEGES ON SCHEMA cellular TO simple_crud_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA cellular TO simple_crud_user;
