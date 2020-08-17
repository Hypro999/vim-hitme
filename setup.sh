#!/bin/bash

# Copy over the vim configuration file.
cp ./vimrc ~/.vimrc

# Copy over all of the vim plugins, ftplugins, etc.
cp -r ./vim ~/.vim

# Install all of the plugins using vim-plug (which in turn uses git).
vim -c ":PlugInstall | :qa"

# Add a default colorscheme to the vimrc after we have installed all
# of the plugins since vim-one is one of the plugins.
cat <<EOF >> ~/.vimrc
" Colorscheme
set termguicolors
set background=dark
let g:airline_theme="one"
colorscheme one
EOF
