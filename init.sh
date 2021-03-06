rm -rf ~/.vim/bundle/vundle
rm -f ~/.vimrc
rm -f ~/.gvimrc
rm -f ~/.zshrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone git@github.com:fly1tkg/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gvimrc ~/.gvimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
if [ ! -e ~/.zshrc_local ]; then
    touch ~/.zshrc
fi
vi -c BundleInstall -c qa
echo "done!"
