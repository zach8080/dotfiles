export PS1="\[\e[36m\]!\[\e[m\]\[\e[35m\]\u\[\e[m\][\[\e[31m\]\W\[\e[m\]]>"

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PATH=/usr/local/mysql/bin:$PATH

tmux attach
neofetch
