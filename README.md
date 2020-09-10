# vim-hitme
Get vim setup quickly on linux.

### Abstract
I'm a huge fan of vim and I want anyone (myself included) to easily get vim
configured and ready to go.

I mostly program in python, golang, and erlang nowadays so this vim setup is
configured more specifically for those languages.

Plugin management is now handled by vim-plug (as of commit 49afc3f). Previously it was managed via. vim-pathogen and git submodules.

### Installation
0. Since this vim setup is tailored for python, golang, and erlang, make
   sure that you already have them installed. I'm not going to explain
   how to install them since it's beyond the scope of this readme.

1. Install vim and git.
   If you're on Ubuntu or Debian then you can get vim with all these features
   using the apt package manager:  
   ```bash
      sudo apt update
      sudo apt install -y vim vim-doc vim-gtk3
      sudo apt install -y git git-man gitk
   ```  
   Otherwise I expect you to be able to figure it out.  
   Your installation of vim needs to have python3 support since some of the plugins
   depend on it. If the following command returns/prints `1` then you're good to go.
     - python: `vim --version | grep "+python3" | wc -l`  

2. Now run the following:  
   ```bash
      chmod u+x setup.sh
      ./setup.sh
   ```  
   The setup script will handle everything else. Make sure you're connected
   to the internet though.

And that's it!

##### Bonus
- If you have powerline fonts installed, then you can set
  `let g:airline_powerline_fonts` to `1` instead of `0` and enjoy the
  additional visual appeal. I personally recommend using "Source Mono
  (for Powerline) Regular 11", it's my favorite.

- For macOS, replace `clipboard=unnamedplus` with `clipboard=unnamed` in the vimrc.
