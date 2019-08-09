# get to the home path

export TERM="xterm-256color"

# Homebase
BASE=$HOME

# Location of Dotfiles
export DOTFILES=$BASE/dotfiles

# Specific Configuration Settings

## Check to see if its a mac
if [[ $OSTYPE == darwin* ]]; then
    export GOPATH=$BASE/projects/go

    #set the path
    export PATH=/usr/local/bin:/usr/local/sbin:$PATH
else
    ## Stuff For linux
    export GOPATH=$BASE/Projects/programming/go
fi

#### Antigen Configurations ####
# path to zsh-antigen
source $DOTFILES/zsh/antigen.zsh

# oh-my-zsh plugins
antigen use oh-my-zsh
antigen bundle wd
antigen bundle git

# other bundles
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# ZSH Theme (Minimalist spaceship, because...space?)
antigen theme denysdovhan/spaceship-prompt

# Apply the antigen configurations
antigen apply
#### End Antigen Stuff ####

# add any aliases
[ -f $BASE/.aliases ] && source $BASE/.aliases

### Paths
# Go
export PATH=$PATH:/usr/local/go/bin
