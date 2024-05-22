#!/bin/bash
DIR=$(dirname "$(readlink -f "$0")")
cp "$DIR/my_bashrc.sh" "$DIR/my_bashrc_old.sh"
cp ~/my_bashrc.sh "$DIR/my_bashrc.sh"
