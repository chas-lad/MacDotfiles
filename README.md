# MacDotfiles
Some dotfiles I've made to provide some customisation and automation to my Mac

## Steps when loading config into Unix based machine (presuming I have zsh installed)

1. Clone repo into new hidden directory with one of the following commands (NOTE the end of the command)
    
    (SSH)
    git clone git@github.com:chas-lad/MacDotfiles.git ~/.dotfiles

    (HTTPS)
    git clone https://github.com/chas-lad/MacDotfiles.git ~/.dotfiles

2. Create symlinks in the Home directory to the real files in the repo. (investigate bootstrapping tools and install scripts to get rid of this step)

    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

