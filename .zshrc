# DEFAULTS
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
EDITOR='emacsclient -t'
VISUAL='emacs'

bindkey -e

export PATH=$PATH:/usr/local/bin

setopt interactivecomments
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# COMPINSTALL

zstyle :compinstall filename '/Users/zachary.dawood/.zshrc'
autoload -Uz compinit
compinit



# FUNCTIONS

gropdfms() {
        groff -ms "$1".ms -T pdf > "$1".pdf
}


# ALIASES
alias c='clear'
alias e='emacsclient -t'
alias t='tmux'
alias q='exit'
alias ls='ls -F'
alias la='ls -Fa'
alias lh='ls -Flh'
alias vi='vim'
#alias rm='rm -I --preserve-root'
alias docs='cd ~/documents'
alias dots='cd ~/.dotfiles/'
alias home='cd ~/'

#PROMPT

PROMPT='%F{cyan}!%F{5}%n%F{7}[%F{red}%1~%F{7}]%F{7}>%F{7}'

#STARTUP

uname -a
