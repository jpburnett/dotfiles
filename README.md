# dotfiles
All My Dot Files

The thought is that I do a lot of stuff with Raspberry Pis, I got tired of remaking a profile so many times, it was time to automate it all. This also works for updating my mac and any other linux system I may use. If you find any use for it awesome!

### How do I Install?
Pull the repo and in the setup directory there is dotfileInstall which will set up the dotfiles for zshrc, tmux.conf, and vimrc.
Make the file executable and run it, and there ya go. 

The other file is ubuntuSetup. This installs some of the things that I get tired of remembering if they come preinstalled or not. Now they will...kinda...Same thing though, make the file executable and run it. 

### Important Repos to install
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## This is for my mac stuff
Eventually I'll make a separate script to run on a mac.
Make sure to install homebrew, run (for further questions consult their site):

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

to install and run sshpass you need to run:

`brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb`
