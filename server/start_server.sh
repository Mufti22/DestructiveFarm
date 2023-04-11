#!/bin/sh

# Use FLASK_DEBUG=True if needed

FLASK_APP=$(dirname $(readlink -f $0))/standalone.py python -m flask run --host 0.0.0.0 --port 8888 --with-threads --debug
