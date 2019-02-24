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

echo "Installing chrome"
brew cask install google-chrome

echo "Installing MacVim"
brew cask install macvim

echo "Installing Slack"
brew cask install slack

echo "Installing Obs"
brew cask install obs

echo "Installing VLC"
brew cask install vlc

echo "Installing AWS CLI"
brew install awscli

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Appending custom .zshrc tail... remember to change the theme to 'kafeitu'"
cat $(pwd)/.zshrc_tail >> ~/.zshrc

echo "Done!"
