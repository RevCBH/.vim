#!/usr/bin/env bash

if [ -e ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi

#cp ./.vimrc ~/.vimrc
ln -s `pwd`/.vimrc ~/.vimrc

mkdir -p ~/.vim/after
cp -R ./.vim/after ~/.vim/
mkdir -p ~/.vim/autoload
cp -R ./.vim/autoload ~/.vim/
mkdir -p ~/.vim/bundle
cp -R ./.vim/bundle ~/.vim/
mkdir -p ~/.vim/colors
cp -R ./.vim/colors ~/.vim/
