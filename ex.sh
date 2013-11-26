#!/bin/bash

mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak

ln -s .vim ~/.vim
ln -s .vimrc ~/.vimrc
ln -s .tmux.conf ~/.tmux.conf
