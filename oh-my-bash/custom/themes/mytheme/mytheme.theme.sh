
THEME_SHOW_USER_HOST="true"
SCM_THEME_PROMPT_PREFIX="["
SCM_THEME_PROMPT_SUFFIX="]"

function prompt_git_status {
  local git_status=$(scm_prompt_info)
  if [[  -n "$(echo ${git_status} | grep ${SCM_THEME_PROMPT_CLEAN})" ]]; then
    echo "${_omb_term_teal}${git_status}${_omb_term_normal}"
  else
    echo "${_omb_term_olive}${git_status}${_omb_term_normal}"
  fi
}


_omb_theme_PROMPT_COMMAND() {

    local clock="${_omb_prompt_white}$(clock_prompt)${_omb_term_normal}"
    local user_host="${_omb_term_navy}$(user_host_prompt)$_omb_prompt_reset_color"
    local path="${_omb_prompt_purple}\w${_omb_term_normal}"

    PS1="${clock} ${user_host} $(prompt_git_status) ${path}\n$ "
    PS2="> "
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
