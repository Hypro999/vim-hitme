# vim-hitme
Get vim setup quickly on linux.

### Abstract
I'm a huge fan of vim and I want anyone (myself included) to easily get vim
configured and ready to go. I mostly program in python and golang nowadays
so this vim setup is configured more specifically for those languages.

### Installation
1. Make sure that you already have vim, git, python3, and golang installed.
   I'm not going to go over how to install git, python or golang though.
   Your installation of vim needs to have a few "features" installed.
   If each of the following commands returns/prints `1` then you have
   everything needed.  
     - python: `vim --version | grep "+python3" | wc -l`  
     - system clipboard: `vim --version | grep "+clipboard" | wc -l`  
     - mouse/touchpad support: `vim --version | grep "+mouse " | wc -l`  

   To get vim with all these features using the apt package manager:
   ```bash
      sudo apt update
      sudo apt install vim vim-doc vim-gtk3
   ```
   should do the trick. Otherwise I expect you to be able to figure it out.

2. Now run the following:
   ```bash
      chmod u+x setup.sh
      ./setup.sh
   ```
   The setup script will handle everything else. Make sure you're connected
   to the internet though.

3. Now we'll also want to generate help pages (documentation) for all of the
   plugins we just installed. For that, simply go into vim and the run
   `:Helptags`.

And that's it! You now have a powerful installation of vim suited for
programming in python and golang.

##### Bonus
- If you have powerline fonts installed, then you can set
  `let g:airline_powerline_fonts` to `1` instead of `0` and enjoy the
  additional visual appeal. I personally recommend using "Source Mono
  (for Powerline) Regular 11", it's my favorite.
