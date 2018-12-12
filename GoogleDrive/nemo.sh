#!/bin/bash

if [[ "$1" > " " ]] ; then
  install_dir=$1
else
  install_dir=`pwd`
fi

echo "Installation directory: $install_dir"

nemo_dir=~/.local/share/nemo/actions

mkdir -p .local/share/nemo/actions
\cp -f ./nemo/gdrivePUSH.nemo_action $nemo_dir
\cp -f ./nemo/gdrivePULL.nemo_action $nemo_dir
sed -e "s|INSTALL_DIR|$install_dir|" "./nemo/gdrive.sh" > $nemo_dir/gdrive.sh

nemo --quit


