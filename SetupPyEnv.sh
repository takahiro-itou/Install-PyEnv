#!/bin/bash  -xu

script_dir=$(dirname $0)

target_default=$(readlink -m "${script_dir}/target/pyenv")

if [[ $# -ge 1 ]] ; then
    target_dir=$1;
    shift 1;
else
    target_dir=${target_default}
fi

git clone -v https://github.com/pyenv/pyenv.git ${target_dir}
