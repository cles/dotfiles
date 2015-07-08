autoload -U colors
colors

autoload -U promptinit
promptinit

# VCS stuff
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn hg
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats "%{$fg_bold[yellow]%}%c%{$fg_bold[green]%}%u%{$reset_color%} [%{$fg_bold[blue]%}%b%{$reset_color%}] %{$fg_bold[yellow]%}%s%{$reset_color%}:%r"
precmd() {  # run before each prompt
  vcs_info
}

setopt PROMPT_SUBST     # allow funky stuff in prompt
color="blue"
if [ "$USER" = "root" ]; then
  color="red"         # root is red, user is blue
fi;
prompt="%{$fg_bold[$color]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %B%~%b "

# vim mode stuff
vim_ins_mode="[INS]"
vim_cmd_mode="[CMD]"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
    zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
zle -N zle-line-finish

RPROMPT='${vim_mode} ${vcs_info_msg_0_}'
