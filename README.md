# vimuserlocalfiles

## Neovim Configuration

### Neovim Files and Folders

The files and folders for Neovim are spread in different locations. Here the key
files and locations:

* `~/.config/nvim/init.vim` - enables Doc Mike's vimrc to run.
* `~/.local/share/nvim/site/autoload/plug.vim` - open-source plugin used to
  manage plugins. This file came from the location below and should not be
  customized. Also, there are two copies of this file; one to support vim and
  the other for Neovim.
    - https://github.com/junegunn/vim-plug
* `$VIMUSERLOCALFILE/plug.vim` - the open-source plugin used to manage plugins
  for Vim. This is the same files as mentioned above.
* `$VIMUSERLOCALFILE/plugin.vim` - custom script called by plug.vim for
  management of desired plugins for both Vim and Neovim.
* `$VIMUSERLOCALUSERFILES/plugged` - stores all the downloaded plugins.

### Neovim Plugins Pre-reqs

* libc-dev package - required to build the `telescope-fzf-native.nvim`.
    - `libc6-dev` on Ubuntu 20.04
    - TODO: determine package for Fedora

### vim-plug (plug.vim) Plug-in Manager for Neovim


## To Do
* Remove plugins that Doc Mike is already providing.
* Test if `plugin.vim` can automatically copy plug.vim and download plugins.
* Merge my `vimuserlocalfiles/README.md` and craig's together into this
  document.
