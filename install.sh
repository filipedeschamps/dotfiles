echo "Installing binaries:"

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing chrome"
brew install --cask google-chrome

echo "Installing Cursor"
brew install --cask cursor

echo "Installing Docker"
brew install --cask docker

echo "Installing Postico"
brew install --cask postico

echo "Installing AWS CLI"
brew install awscli

echo "Installing Terraform"
brew install terraform

echo "Installing ffmpeg"
brew install ffmpeg

echo "Installing Raycast"
brew install --cask raycast

echo "Installing BetterDisplay"
brew install --cask betterdisplay

echo "Installing The Unarchiver"
brew install --cask the-unarchiver

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Symlinking things:"

# Remove original files if they exist
rm -f ~/.gitconfig
rm -f ~/.zshrc
rm -f ~/.p10k.zsh

# Create symlinks
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.p10k.zsh ~/.p10k.zsh

echo "Done! But..."
echo "Manually copy these files/directories from the old system (optional):"
echo "  - .zsh_history"
echo "  - .ssh"
echo "  - .aws"
