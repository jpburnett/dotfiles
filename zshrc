# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
#antigen bundle wd
antigen bundle git

# other bundles
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# ZSH Theme (Powerlevel10k, its over 9000!!!)
antigen theme romkatv/powerlevel10k 

# Apply the antigen configurations
antigen apply
#### End Antigen Stuff ####

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# completions
fpath=($DOTFILES/zsh/completions $fpath)
autoload -Uz compinit && compinit -i

# edits for plugins
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=25

# add any aliases
[ -f $BASE/.aliases ] && source $BASE/.aliases

### Paths
# Go
export PATH=$PATH:/usr/local/go/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
