#!/bin/bash

read -r -d '' hosts << EOM
source $(pwd)/src/aliases.sh
EOM

replaceStringWithoutNewline=${hosts//$'\n'/\\n}

./scripts/manage-block-in-file.sh ~/.zshrc "$replaceStringWithoutNewline"