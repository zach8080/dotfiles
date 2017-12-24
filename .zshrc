# DEFAULTS
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
EDITOR='emacsclient -t'

bindkey -e

setopt interactivecomments
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# COMPINSTALL

zstyle :compinstall filename '/Users/zachary.dawood/.zshrc'
autoload -Uz compinit
compinit

# ALIASES

alias e='emacsclient -t'
alias la='ls -a'
alias vi='vim'
alias rm='rm -I --preserve-root'
alias cdocs='cd ~/Documents'
alias cnotes='cd ~/Documents/Year11Notes/'
alias cdotfiles='cd ~/.dotfiles/'
alias chome='cd ~/'

#PROMPT

PROMPT='%F{cyan}!%F{5}%n%F{7}[%F{red}%1~%F{7}]%F{7}>%F{7}'

#STARTUP

neofetch
tmux attach



