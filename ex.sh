#!/bin/bash
#THE FUCKING WORK AROUND INSTALL SCRIPT

mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak

ln -s $PWD/.vim ~/.vim
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "install configured bundles:"
echo "Launch vim, run :BundleInstall"
echo "After Bundle install use these commands"

echo "cd ~/.vim/bundle/YouCompleteMe"
echo "./install.sh --clang-completer"
echo "cd -"
echo "cp .ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py" 

