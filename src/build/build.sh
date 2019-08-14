SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"
gcc -g -fPIC -shared series.c -o series.so

