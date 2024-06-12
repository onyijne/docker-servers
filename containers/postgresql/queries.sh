#!/bin/bash

PGPASSWORD=${POSTGRES_PASSWORD} psql --username ${POSTGRES_USER} < /queries/queries.sql