### Zsh minimalist prompt

## Options
setopt prompt_subst
setopt transientrprompt
setopt PROMPT_SUBST
autoload -U colors && colors
autoload -Uz vcs_info

## Git info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%F{yellow}±%b '
zstyle ':vcs_info:git*' actionformats '%b|%a'

precmd() {
	vcs_info
}

## Prompts
PS1='%{%(?~$fg[green]~$fg[red])%}❯ %F{7}'
RPS1='${vcs_info_msg_0_}%(1j.%F{1}+%j .)%F{12}%c'
