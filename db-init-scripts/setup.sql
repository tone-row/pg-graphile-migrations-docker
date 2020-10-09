CREATE USER appuser
WITH PASSWORD 'password';

CREATE DATABASE myapp OWNER appuser;
CREATE DATABASE myapp_shadow OWNER appuser;