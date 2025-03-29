# Dotfiles

A collection of config files to quickly set up a fresh macOS development environment, tailored for a JavaScript developer.

Includes my favorite browsers, code editor, a shiny terminal and a bunch of CLI and quality of life tools.

## Content

### Essentials

- **Browsers**: [Brave](https://brave.com/) and Google Chrome.
- **Editor**: VSCode with essential plugins.
- **Terminal**: [iTerm](https://iterm2.com/) with the [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) shell and [Dracula](https://draculatheme.com/)-inspired theme.
- **Windows manager**: [Rectangle](https://rectangleapp.com/)
- **Clipboard manager**: [Maccy](https://maccy.app/)

### CLI tools

[GitHub CLI](https://cli.github.com/), [n](https://github.com/tj/n), [wget](https://www.gnu.org/software/wget/), [zoxide](https://github.com/ajeetdsouza/zoxide), [ack](https://linux.die.net/man/1/ack), [bat](https://github.com/sharkdp/bat), [thefuck](https://github.com/nvbn/thefuck), [tldr](https://tldr.sh/)

## Installation

### Prerequisites

#### Install Xcode CLI

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

### Install oh-my-zsh and plugins

#### oh my zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### zsh-you-should-use

```sh
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ~/.oh-my-zsh/custom/plugins/you-should-use
```

#### zsh-syntax-highlighting

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

#### zsh-autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

#### zsh-history-substring-search

```sh
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
```

### Copy .zshrc

```sh
cp "~/.dotfiles/home/.zshrc" "~/.zshrc"
```

### Setup git

#### Copy config

```sh
cp "~/.dotfiles/home/.gitconfig" "~/.gitconfig"
```

#### Setup credentials

```sh
git config --global user.name "name"
git config --global user.email "email"
git config --global github.user "username"
```

### Copy VSCode settings

```sh
cp  "~/.dotfiles/vscode/settings.json" "~/Library/Application Support/Code/User/settings.json"
```

### Install iTerm theme and settings

```sh
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
```