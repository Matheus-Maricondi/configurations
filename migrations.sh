#!/bin/bash
set -e

echo "🚀 Running migrations and seeds for top-api-gateway..."
docker compose run --rm api-top-gateway sh -c "\
  npm install --legacy-peer-deps && \
  npx knex migrate:latest --knexfile knexfile.ts && \
  npx knex seed:run --knexfile knexfile.ts \
"

echo "🚀 Running migrations for top-users..."
docker compose run --rm api-top-users sh -c "\
  npm install --legacy-peer-deps && \
  npx knex migrate:latest --knexfile knexfile.ts \
"

echo "🚀 Running migrations for top-finances..."
docker compose run --rm api-top-finances sh -c "\
  npm install --legacy-peer-deps && \
  npx knex migrate:latest --knexfile knexfile.ts \
"

echo "✅ All migrations and seeds completed!"
