# VIM
echo "Symlinking things:"

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.zshrc ~/.zshrc

# BINARIES
echo "Installing binaries:"

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing wget"
brew install wget

echo "Installing Cask"
brew tap caskroom/cask

echo "Installing chrome"
brew cask install google-chrome

echo "Installing MacVim"
brew cask install macvim

echo "Installing Slack"
brew cask install slack

brew install gnu-sed
npm install -g diff-so-fancy
npm install -g standard-format

echo "Installing Node.js"
brew install node

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

echo "[Pagar.me] Installing nodenv"
brew install nodenv

echo "[Pagar.me] Installing Node.js 0.11.14"
nodenv install 0.11.14

echo "Installing Docker Toolbox"
brew cask install dockertoolbox

echo "Creating Docker Virtual Machine"
docker-machine create --driver virtualbox default

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Done!"
