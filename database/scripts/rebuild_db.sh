#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./rebuild_db.sh <server> <port> <user> <password> <database>
# Example:
#   ./rebuild_db.sh localhost 1433 sa "YourStrong!Passw0rd" dvld_dev

if [ "$#" -ne 5 ]; then
  echo "Usage: $0 <server> <port> <user> <password> <database>"
  exit 1
fi

SERVER=$1
PORT=$2
USER=$3
PASS=$4
DB_NAME=$5

SQLCMD="sqlcmd -b -S ${SERVER},${PORT} -U ${USER} -P ${PASS} -d ${DB_NAME}"

echo "🛠  Rebuilding database: $DB_NAME on $SERVER:$PORT"

echo "→ Applying schemas..."
$SQLCMD -i ../schema/00_schemas.sql

echo "→ Creating tables..."
$SQLCMD -i ../schema/01_tables.sql

echo "→ Creating views..."
$SQLCMD -i ../schema/02_views.sql

echo "→ Creating stored procedures..."
$SQLCMD -i ../schema/03_procedures.sql

echo "→ Creating functions..."
$SQLCMD -i ../schema/04_functions.sql

echo "→ Creating indexes..."
$SQLCMD -i ../schema/05_indexes.sql

echo "→ Adding constraints..."
$SQLCMD -i ../schema/99_constraints.sql

echo "→ Seeding lookup data..."
$SQLCMD -i ../seed/01_lookup_data.sql

echo "→ Seeding sample users..."
$SQLCMD -i ../seed/02_sample_users.sql

echo "→ Seeding sample applications..."
$SQLCMD -i ../seed/03_sample_applications.sql

echo "✅ Database rebuild complete for: $DB_NAME"
