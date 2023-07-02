# A mixture of elements from darkblood, duellj, and af-magic
# bastardized by yours truly!

if [[ $terminfo[colors] -ge 256 ]]; then
    whit="%F{255}"
    blue="%F{081}"
    purp="%F{004}"
    pink="%F{013}"
    gree="%F{118}"
else
    whit="%F{white}"
    blue="%F{cyan}"
    purp="%F{blue}"
    pink="%F{magenta}"
    gree="%F{green}"
fi

# override the machine name with your own name by setting the COMP env var
comp=$([[ ! -z "$COMP" ]] && echo "@$COMP" || echo "@%m")

# a nice blend of extra space, ease of seeing where your last command executed, and wonderful colors
PROMPT=$'----------------------------------------
%{$purp%}┌[%{$whit%}%n%{$blue%}%{$comp%}%{$purp%}] [%{$gree%}/dev/%y%{$purp%}] [%{$pink%}%{$AWS_DEFAULT_PROFILE%}%{$purp%}] %{$(git_prompt_info)%}%(?,,%{$purp%}[%{$whit%}%?%{$purp%}])
%{$purp%}└[%{$blue%}%#%{$purp%}]→%{$reset_color%} '
PS2=$' %{$purp%}|>%{$reset_color%} '

RPROMPT=$'%{$purp%}[%{$blue%}%c%{$purp%}]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$purp%}[%{$whit%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$purp%}]😡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$purp%}]☺️ %{$reset_color%}"
