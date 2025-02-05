# Dotfiles

A collection of config files and tools to quickly set up a fresh macOS development environment, tailored for a JavaScript developer.

![screenshot](preview.png)

## Content

### Essential tools

- **Browsers**: [Brave](https://brave.com/), Google Chrome, and Firefox.
- **Editor**: [VSCode](https://code.visualstudio.com/) with JavaScript-oriented settings and essential plugins.
- **Terminal**: [iTerm](https://iterm2.com/) with the [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) shell and [Dracula](https://draculatheme.com/)-inspired theme.
- **Package manager**: [Homebrew](https://brew.sh/)
- **Node version manager**: [n](https://github.com/tj/n)
- **Git config**: Default `--rebase` on pull, `autoStash`, and VSCode as the editor.

<!-- 
Nice to have
- **Windows manager**: [Rectangle](https://rectangleapp.com/)
- **Clipboard manager**: [PastePal](https://github.com/IndieGoodies/PastePal)
- **Scroll fix**: [UnnaturalScrollWheels](https://github.com/ther0n/UnnaturalScrollWheels)
- **Screenshot tool**: [CleanShotX](https://cleanshot.com/)
-->

### CLI enhancements

- [GitHub CLI](https://cli.github.com/) - GitHub tools.
- [git-open](https://github.com/paulirish/git-open) - Open repo remote in the browser.
- [thefuck](https://github.com/nvbn/thefuck) - Fix your last command.
- [wget](https://www.gnu.org/software/wget/) - Download files.
- [zoxide](https://github.com/ajeetdsouza/zoxide) - Better `cd`.
- [ack](https://linux.die.net/man/1/ack) - Better `grep`.
- [bat](https://github.com/sharkdp/bat) - Better `cat`.
- [tldr](https://tldr.sh/) - Better `man`.

## Installation

### Prerequisites

#### Xcode CLI

```sh
xcode-select --install
```

### Clone the Repo

```sh
git clone https://github.com/jarekdanielak/dotfiles.git ~/.dotfiles
```

### Execute Install Script

> [!NOTE]  
> Your current config will be backed up in `~/.dotfiles-backup` directory. Refer to the [Uninstall](#uninstall) section to bring it back.

```sh
bash ~/.dotfiles/install.sh
```

### Set Git User

```sh
git config --global user.name "name"
git config --global user.email "email"
git config --global github.user "username"
```

## Uninstall

Your config is backed up in the `~/.dotfiles-backup` directory.

### zsh and git config

Copy `.zshrc` and `.gitconfig` files back to the home directory.

```sh
cp -f ~/.dotfiles-backup/.zshrc ~/
```

```sh
cp -f ~/.dotfiles-backup/.gitconfig ~/
```

### VSCode Settings

Copy `settings.json` back to VSCode User directory.

```sh
cp -f ~/.dotfiles-backup/settings.json ~/Library/Application\ Support/Code/User/
```

### Homebrew

Bring back your old packages.

```sh
brew bundle cleanup --file='~/.dotfiles-backup/Brewfile' --force
```

### oh-my-zsh

Refare to [Uninstalling oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#uninstalling-oh-my-zsh).
