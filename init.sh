#! /bin/sh

#copy env file
if [ ! -f ./.env ]; then
  cp .env.example .env
fi

# create services folder
if [ ! -d ./apps/services/froxlor ]; then
  mkdir -p apps/services/froxlor
  ## you can download and extract froxlor here
fi

if [ ! -d ./apps/services/roundcube ]; then
  mkdir -p apps/services/roundcube/public_html
  ## you can download and extract roundcube here
fi

if [ -d .st ]; then
  rm -dr .st
fi

 mkdir -p .st/psql-queries && mkdir .st/mysql-queries && mkdir -p .st/mydql/data

 cp helperfiles/* .st/mysql-queries/
 cp helperfiles/queries.sql .st/psql-queries/
