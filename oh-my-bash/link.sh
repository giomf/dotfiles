#!/bin/bash -e

readonly SCRIPT_PATH="$(dirname "$(readlink -f "$0")")"

function link_files_in_directory () {
    local readonly source_path="$1"
    local readonly destination_path="$2"

    for file_path in $(find "${source_path}" -maxdepth 1 -type f); do
        local readonly file_name=$(basename ${file_path})
        ln -sf "${file_path}" "${destination_path}/${file_name}"
    done
}

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    script_name="$(basename "$0")"
    echo -e "${script_name}: Links all needed files for oh-my-bash" 
    exit 0
else
    # Link bashrc
    ln -sf "${SCRIPT_PATH}/bashrc" "${HOME}/.bashrc"

    # Link custom folders
    link_files_in_directory "${SCRIPT_PATH}/custom/aliases" "${HOME}/.config/oh-my-bash/custom/aliases"
    ln -sf "${SCRIPT_PATH}/custom/plugins/cd" "${HOME}/.config/oh-my-bash/custom/plugins/cd"
    ln -sf "${SCRIPT_PATH}/custom/plugins/ssh-agent" "${HOME}/.config/oh-my-bash/custom/plugins/ssh-agent"
    ln -sf "${SCRIPT_PATH}/custom/themes/mytheme" "${HOME}/.config/oh-my-bash/custom/themes"
fi

exit 0

