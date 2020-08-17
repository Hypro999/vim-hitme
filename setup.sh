#!/bin/bash

# Copy over the vim configuration file.
cp ./vimrc ~/.vimrc

# Download all of the plugins and any git submodules they need.
git submodule update --init --recursive

# Copy over all of the vim plugins, ftplugins, etc.
cp -r ./vim ~/.vim

# Install all of the plugins using vim-plug (which in turn uses git).
vim -c ":PlugInstall | :qa"
