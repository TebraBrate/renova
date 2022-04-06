#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE DATABASE $POSTGRES_DATABASE_NAME;
  GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DATABASE_NAME TO $POSTGRES_USER;
EOSQL
