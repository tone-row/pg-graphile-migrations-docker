#!/bin/sh
./node_modules/.bin/postgraphile \
  --host 0.0.0.0 \
  --connection $DATABASE_URL \
  --schema app_public \
  --watch \
  --enhance-graphiql \
  --subscriptions \
  --dynamic-json \
  --no-setof-functions-contain-nulls \
  --no-ignore-rbac \
  --no-ignore-indexes \
  --show-error-stack=json \
  --extended-errors hint,detail,errcode \
  --append-plugins @graphile-contrib/pg-simplify-inflector \
  --graphiql "/" \
  --allow-explain \
  --enable-query-batching \
  --legacy-relations omit