  # Make the colors pretty
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced
  export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
  export TERM="xterm-color"

# -------Aliases to Make Life Better-------------
alias pull-all='find . -type d -maxdepth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull \;'

# -------Function Calls to make things easier----
# Refreshes A Pi
function swab {
curl -XPUT http://$1:8888/refresh
}

# Forces a Pi to update the DB
updatedb () {
        curl -X GET "http://$1:7012/replication/start"
}
