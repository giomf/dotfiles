
export THEME_SHOW_USER_HOST="true"
export SCM_THEME_PROMPT_PREFIX="["
export SCM_THEME_PROMPT_SUFFIX="]"

function prompt_git_status {
  local git_status
  git_status=$(git_prompt_info)
  if [[  ${SCM_STATE} == "${SCM_THEME_PROMPT_CLEAN}" ]]; then
    echo "${_omb_term_teal}${git_status}${_omb_term_normal}"
  else
    echo "${_omb_term_olive}${git_status}${_omb_term_normal}"
  fi
}


_omb_theme_PROMPT_COMMAND() {

    local clock
    clock="${_omb_prompt_white}$(clock_prompt)${_omb_term_normal}"
    local user_host
    user_host="${_omb_term_navy}$(user_host_prompt)$_omb_prompt_reset_color"
    local path
    path="${_omb_prompt_purple}\w${_omb_term_normal}"

    # Get SCM state
    scm

    if [[ ${SCM} == "${SCM_GIT}" ]]; then
      PS1="${clock} ${user_host} $(prompt_git_status) ${path}\n$ "
    else
      PS1="${clock} ${user_host} ${path}\n$ "
    fi
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
