echo "dotfiles: Start"

# Homebrew
if brew -v &>/dev/null; then
    echo "dotfiles: Homebrew already installed"
else
    echo "dotfiles: Installing Homebrew"
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Homebrew bundle
echo "dotfiles: Installing Homebrew bundle"
brew bundle --file="./brew/Brewfile"

# Install oh my zsh
echo "dotfiles: Installing oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install oh my zsh plugins
echo "dotfiles: Installing oh my zsh plugins"

ZSH_PLUGINS_DIR=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins

# git-open plugin
git clone https://github.com/paulirish/git-open.git $ZSH_PLUGINS_DIR/git-open

# zsh-you-should-use
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_PLUGINS_DIR/you-should-use

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS_DIR/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGINS_DIR/zsh-autosuggestions

# zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH_PLUGINS_DIR/zsh-history-substring-search

# Prepare a directory for backups
echo "dotfiles: Preparing backup directory"
mkdir "$HOME/.dotfiles-backup"

# Back up zshrc
echo "dotfiles: Backing up .zshrc"
cp -i "$HOME/.zshrc" "$HOME/.dotfiles-backup/.zshrc"

# # Back up .gitconfig
echo "dotfiles: Backing up .gitconfig"
cp -i "$HOME/.gitconfig" "$HOME/.dotfiles-backup/.gitconfig"

# # Back up VSCode settings
echo "dotfiles: Backing up VSCode settings"
cp -i "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/.dotfiles-backup/settings.json"

# Copy zshrc config
echo "dotfiles: Copying .zshrc"
cp -i "./home/.zshrc" "$HOME/.zshrc"

# # Copy gitconfig
echo "dotfiles: Copying .gitconfig"
cp -i "./home/.gitconfig" "$HOME/.gitconfig"

# # Copy VSCode settings
echo "dotfiles: - Copying VSCode settings"
cp -i "./vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# # Install iterm theme and settings
echo "dotfiles: Installing iTerm theme and settings"
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.dotfiles/iterm"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

echo "dotfiles: End"
