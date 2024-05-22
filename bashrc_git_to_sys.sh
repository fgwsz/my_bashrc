#!/bin/bash
DIR=$(dirname "$(readlink -f "$0")")
cp ~/my_bashrc.sh ~/my_bashrc_old.sh
cp "$DIR/my_bashrc.sh" ~/my_bashrc.sh
