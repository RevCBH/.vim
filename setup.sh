#!/usr/bin/env bash

if [ -e ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi

if [ -e ~/.gvimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi

ln -s `pwd`/.vimrc ~/.vimrc
ln -s `pwd`/.gvimrc ~/.givmrc

mkdir -p ~/.vim/after
cp -R ./.vim/after ~/.vim/
mkdir -p ~/.vim/autoload
cp -R ./.vim/autoload ~/.vim/
mkdir -p ~/.vim/bundle
cp -R ./.vim/bundle ~/.vim/
mkdir -p ~/.vim/colors
cp -R ./.vim/colors ~/.vim/
