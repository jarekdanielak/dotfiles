# .dotfiles

A collection of config files to quickly set up a fresh macOS development environment, tailored for me.

Includes my favorite browsers, code editor, a shiny terminal and a bunch of CLI and quality of life tools.

## What's inside

See the [Brewfilew](./brew/Brewfile) for the full list.

## Setup

### Install Xcode CLI

```sh
xcode-select --install
```

### Clone the repo

Keep it in the home dir for easy sync.

```sh
git clone https://github.com/jarekdanielak/dotfiles.git ~/.dotfiles
```

### Install stuff from Brewfile

```sh
brew bundle --file="~/.dotfiles/brew/Brewfile"
```

### Install Oh My Zsh and plugins

#### Oh My Zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Plugins

```sh
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ~/.oh-my-zsh/custom/plugins/you-should-use
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
```

### Copy config files

```sh
cp -r ~/.dotfiles/home/. ~/
```

### Setup git credentials

```sh
git config --global user.name "name"
git config --global user.email "email"
git config --global github.user "username"
```