## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```


2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:merha-g-selassie/mac-config.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/merha-g-selassie/mac-config.git ~/.dotfiles
```


3. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

5. Install vs code extensions and settings file

```zsh
Install 'Settings Sync' extension on vs code
Login with Github
Click 'Edit Configuration'
Gist ID: 2e36c6828a7d5e0701610fbc0de63447
Open Command Palette and type 'sync download'
To update the settings type 'sync update'
```

6. Install npm dependancies

```zsh
Run sh npm.sh
```