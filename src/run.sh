SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"
sqlite3 :memory: \
".load ./build/series" \
"SELECT value FROM generate_series(5,100,5);" \
"SELECT random() FROM generate_series LIMIT 20;" \
"SELECT (abs(random()) % 100) FROM generate_series LIMIT 20;"

