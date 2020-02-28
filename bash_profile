# Make the colors pretty
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export TERM="xterm-color"

# -------Aliases to Make Life Better-------------
alias pull-all='find . -type d -maxdepth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull \;'
alias brewski="brew update && brew upgrade && brew cleanup"
alias cddev="cd $HOME/Documents/github"
alias gin="go run *.go" #start up go server
alias gstat="git status"

# Go Stuff
export GOROOT="/usr/local/opt/go/libexec"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
