# VIM
echo "Symlinking things:"

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# BINARIES
echo "Installing binaries:"

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing wget"
brew install wget

echo "Installing The Silver Searcher"
brew install the_silver_searcher

echo "Installing Cask"
brew tap caskroom/cask

echo "Installing chrome"
brew cask install google-chrome

echo "Installing MacVim"
brew cask install macvim

echo "Installing Slack"
brew cask install slack

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

echo "Installing TunnelBlick"
brew cask install tunnelblick

echo "Installing Skype"
brew cask install skype

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Done!"
