#!/bin/bash
DB="mydb"
USER="your_username"
FILE="your_file.sql"

psql -U "$USER" -d "$DB" -f "$FILE"

