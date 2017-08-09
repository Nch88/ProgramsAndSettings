# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 4
zstyle :compinstall filename '/home/sja/.zshrc'

setopt inc_append_history
# Save timestamp and duration of commands in host file
setopt extended_history

setopt auto_pushd
setopt pushd_ignore_dups

autoload -Uz compinit
compinit
# End of lines added by compinstall

plugins=(git ssh-agent)

HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
# bindkey -v
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'
zstyle ':vcs_info:*' actionformats \
'%F{2}%b%f'
zstyle ':vcs_info:*' formats       \
'%F{2}%b%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd() {
    vcs_info
}


setopt prompt_subst
PROMPT="%1{%(0?.%F{green}●%f.%F{red}●%f)%} %{%F{blue}%}%~%{%f%} "
RPROMPT='${vcs_info_msg_0_}'

alias grep='grep --color=always'
alias ll='ls -lh --color=auto'
alias s='apt search'
alias i='sudo apt install -y'
alias gs='git status'
alias gco='git checkout'
alias gc='git clone'
alias gg='git gui'
alias gl='git log'
alias gf='git fetch'

u () {
    args=($@)
    eval "$@"
    succ=$?
    echo "\a"
    if [[ $succ > 0 ]]; then
        notify-send "Failed: $args"
    else
        notify-send "Finished: $args"
    fi
}

source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions

    zgen save
fi

bindkey '^[[1;5A' history-substring-search-up
bindkey '^[[1;5B' history-substring-search-down
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=yellow,bold'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=magenta,bold'

export GOPATH="$HOME/go/"