# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 4
zstyle :compinstall filename '/home/nch/.zshrc'

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

my-backward-delete-word() {
    local WORDCHARS=${WORDCHARS/\//}
    zle backward-delete-word
}
zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word
[[ -s "/home/nch/.gvm/scripts/gvm" ]] && source "/home/nch/.gvm/scripts/gvm"

# Getting oracle instantclient to work
export ORA_REL_MAJOR=12.2
export ORACLE_HOME=/usr/lib/oracle/${ORA_REL_MAJOR}/client64
export LD_LIBRARY_PATH=/usr/lib/oracle///lib:/usr/local/lib:/usr/lib64
export C_INCLUDE_PATH=/usr/include:/usr/lib/oracle///lib:/usr/include/oracle//:/usr/local/include
export CGO_CFLAGS=-I/${ORACLE_HOME}
export CGO_LDFLAGS="-L/${ORACLE_HOME}/lib -lclntsh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm