#!/bin/bash -e

readonly SCRIPT_PATH="$(dirname "$(readlink -f "$0")")"

if [[ "$1" == "--help" || "$1" == "-h" || -z "$1" ]]; then
    script_name="$(basename "$0")"
    echo -e "${script_name} Usage:\n\tOptions:\n\t--bash"
    exit 0
elif [[ "$1" == "--bash" ]]; then
    # Link bashrc
    ln -s "${SCRIPT_PATH}/oh-my-bash/bashrc" ~/.bashrc

    # Link custom folders
    ln -s "${SCRIPT_PATH}/custom/aliases/*" ~/.config/oh-my-bash/custom/aliases/
    ln -s "${SCRIPT_PATH}/custom/themes/*" ~/.config/oh-my-bash/custom/themes/
else
    exit 1
fi
