#!/bin/bash
if [ ! -f "$_tilde_root"tilde-config.sh ]; then
    echo "Tilde: 'tilde-config.sh' file not found"

    exit;
else
    source "$_tilde_root"tilde-config.sh

    [[ $_tilde_load_general -eq 1 ]] && source "$_tilde_root"bin/general.sh

    [[ $_tilde_load_vagrant -eq 1 ]] && source "$_tilde_root"bin/vagrant.sh

    [[ $_tilde_load_php -eq 1 ]]     && source "$_tilde_root"bin/php.sh

    [[ $_tilde_load_docker -eq 1 ]]  && source "$_tilde_root"bin/docker.sh
fi
