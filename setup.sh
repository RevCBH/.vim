#!/usr/bin/env bash

cp ./.vimrc ~/.vimrc

mkdir -p ~/.vim/after
cp -R ./.vim/after ~/.vim/
mkdir -p ~/.vim/autoload
cp -R ./.vim/autoload ~/.vim/
mkdir -p ~/.vim/bundle
cp -R ./.vim/bundle ~/.vim/
mkdir -p ~/.vim/colors
cp -R ./.vim/colors ~/.vim/
