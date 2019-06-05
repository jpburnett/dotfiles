# get to the home path

export TERM="xterm-256color"

# Check if directory is home
if [[ $UID == 0 ]]; then
    HOMEBASE=/home/parker
else
    HOMEBASE=$HOME
fi

# dotfiles directory
export DOTFILES=$HOMEBASE/dotfiles


#### Antigen Configurations ####

source $DOTFILES/zsh/antigen/antigen.zsh

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


