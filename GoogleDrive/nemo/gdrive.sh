#!/bin/bash

type="$1"
dir="$2"

cd "$dir"
INSTALL_DIR/gdrive $type

echo "Type [enter] to exit."
read a

