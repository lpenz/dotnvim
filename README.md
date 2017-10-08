[![Build Status](https://travis-ci.org/lpenz/dotnvim.png?branch=master)](https://travis-ci.org/lpenz/dotnvim)

# dotnvim

My ~/.config/nvim directory

## Install instructions

Manually:

    $ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    $ nvim -c 'PlugInstall' -c 'qa!'


... or using ansible-pull:

    $ ansible-pull -U https://github.com/lpenz/dotnvim.git -i localhost, ansible-playbook.yml


