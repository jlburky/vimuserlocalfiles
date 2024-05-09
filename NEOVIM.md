# Neovim

# Pre-reqs 
Vim is installed and functioning see [README](./README.md).

## Installation

* Follow the Neovim instructions in Doc Mike's `vimfiles/docs/notes`.NOTE: be sure nvim-linux64 directory has correct permissions>
* Create the file `~/.config/nvim/init.vim` and add the following:
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

## Neovim Files and Folders

The files and folders for Neovim are spread in different locations. Here's a
summary of the key files and locations:

* `~/.config/nvim/init.vim` - enables Doc Mike's vimrc to run.
* `~/.local/share/nvim/site/autoload/plug.vim` - open-source plugin used to
  manage plugins. This file came from the location below and should not be
  customized. Also, there are two copies of this file; one to support vim and
  the other for Neovim.
    - https://github.com/junegunn/vim-plug
* `$VIMUSERLOCALFILE/plug.vim` - the open-source plugin used to manage plugins
  for Vim. This is the same files as mentioned above.
* `$VIMUSERLOCALFILE/plugin.vim` - custom script called by `plug.vim` for
  management of desired plugins for both Vim and Neovim. This script also
  bootstraps the installation of `plug.vim` for Neovim (see script) to the
  correct location.
* `$VIMUSERLOCALUSERFILES/plugged` - stores all the downloaded plugins.

## Neovim Plugins
Handling external plugins (outside of Doc Mike's provided list) is now handled
via the `vim-plug` plugin.

### Pre-reqs:

* libc-dev package - required to build the `telescope-fzf-native.nvim`.
    - `libc6-dev` on Ubuntu 20.04
    - TODO: determine package for Fedora

### vim-plug (plug.vim) Plug-in Manager

* TODO: Should I describe how to install manually or let `plugin.vim` automatically
  install plugins?

## Neovim Initialization

NeoVim initializes in the follow order:

```
~/.vim/vimrc
 |--> $VIMUSERLOCALFILES/vimrc-vars.vim
     |--> $VIMUSERLOCALFILES/vimrc-after.vim
          |--> plugins.vim
          |
          ... (vim initialization completes)
          |
          |--> (autocmd VimEnter *) NvimStartup()
               |--> PlugInstall (if necessary)
               |--> user/init.lua
                    |--> user/lsp_config.lua
                    |--> user/telescope/init.lua
                    |--> ... (other inits)
```

## To Do
* Test if `plugin.vim` can automatically copy plug.vim and download plugins.
* Merge my `vimuserlocalfiles/README.md` and craig's together into this
  document.
* Determine plugin dependencies for Fedora.
* Merge files from Craig's repo into here.
