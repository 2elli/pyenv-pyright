#!/usr/bin/env bash

set -e
set -u

cd "$(dirname "$0")"

pyenv_root="$(pyenv root)"

if [[ -z $pyenv_root || ! -d $pyenv_root ]]; then
    echo "'pyenv root' not returning valid \$PYENV_ROOT"
    echo "got '$pyenv_root'"
    exit -1
fi

install_dir="$(pyenv root)/plugins/pyenv-pyright"
cp -Ppr . "${install_dir}"

echo "Installed pyenv-pyright to ${install_dir}"
