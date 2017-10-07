#!/bin/bash
set -e

if [ "$ENV" = 'DEV']; then
echo "Running Developmtnt Server"
exec python3 "indentidock.py"
else
echo "Running Production Server"
exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/indentidock.py \
               --callable app --stats 0.0.0.0:9191 
fi