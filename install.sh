
# VIM
echo "Symlinking VIM"

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.gitconfig ~/.gitconfig

# BINARIES
echo "Installing binaries"
brew install gnu-sed
npm install -g diff-so-fancy
npm install -g standard-format

echo "Done!"
