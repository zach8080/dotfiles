# PROMPT

export PS1="\[\e[36m\]!\[\e[m\]\[\e[35m\]\u\[\e[m\][\[\e[31m\]\W\[\e[m\]]>"

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PATH=/usr/local/mysql/bin:$PATH

# ALIASES 

alias e='emacsclient -t'
alias c='clear'
alias ls='ls -F'
alias la='ls -Fa'
alias lh='ls -Falh'
alias vi='vim'
alias rm='rm -I --preserve-root'

alias cdocs='cd ~/Documents'
alias cnotes='cd ~/Documents/Year11Notes'
alias cdots='cd ~/.dotfiles/'
alias chome='cd ~/'

