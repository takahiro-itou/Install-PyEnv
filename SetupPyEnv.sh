#!/bin/bash  -xu

script_dir=$(dirname $0)

target_default=$(readlink -m "${script_dir}/target/pyenv")

if [[ $# -ge 1 ]] ; then
    target_dir=$1;
    shift 1;
else
    target_dir=${target_default}
fi

if [[ ! -d ${target_dir} ]] ; then
    git clone -v    \
        https://github.com/pyenv/pyenv.git              \
        ${target_dir}
fi

plugin_venv_dir=${target_dir}/plugins/pyenv-virtualenv

if [[ ! -d ${plugin_venv_dir} ]] ; then
    git clone -v    \
        https://github.com/pyenv/pyenv-virtualenv.git   \
        ${plugin_venv_dir}
fi
