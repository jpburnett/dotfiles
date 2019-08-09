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

# theme options
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  # hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  # node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  # aws           # Amazon Web Services section
  venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  # terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_RPROMPT_ORDER=(
  git           # Git section (git_branch + git_status)
  vi_mode       # Vi-mode indicator
  battery       # Battery level and status
)
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_PROMPT_SEPARATE_LINE="true"
SPACESHIP_CHAR_SYMBOL="λ "
SPACESHIP_CHAR_SYMBOL_ROOT=$SPACESHIP_CHAR_SYMBOL
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="red"
SPACESHIP_CHAR_COLOR_SECONDARY="yellow"
SPACESHIP_USER_SHOW="needed"
SPACESHIP_HOST_PREFIX="@"

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
