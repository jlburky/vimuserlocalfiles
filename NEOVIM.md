# Neovim Additions

# Pre-reqs 
* Vim is installed and functioning. See [README](./README.md).
* ninja-build
* libstdc++-static
* ripgrep
* shellcheck (is this really needed?)
* libc-dev package - required to build the `telescope-fzf-native.nvim`.
    - `libc6-dev` on Ubuntu 20.04
    - TODO: determine package for Fedora


## Installations

Follow the Neovim instructions in Doc Mike's `vimfiles/docs/notes`. NOTE:
  be sure `nvim-linux64` directory has correct permissions.

Install the `neovim` package to your native Python3, locally:
```bash
$ python3 -m pip install neovim
```

To use nvim-lsp pylsp, install language servers:
```bash
$ python3 -m pip install python-language-server[all]
```

Clone and build the lua language server, Sumneko:
```bash
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server/
git submodule update --init --recursive
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
```

## Configurations
Create the file `~/.config/nvim/init.vim` and add the following:
```vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

## Neovim Files and Folders

The files and folders for Neovim are spread in different locations. Here's a
summary of the key files and locations:

* `$VIMUSERLOCALFILE/plug.vim` - the open-source plugin used to manage plugins
  for Vim. This is the same files as mentioned above.
* `$VIMUSERLOCALFILE/plugin.vim` - custom script called by `plug.vim` for
  management of desired plugins for both Vim and Neovim. This script also
  bootstraps `plug.vim` for Neovim (see script) to the correct location.
* `$VIMUSERLOCALUSERFILES/plugged` - stores all the downloaded plugins.
* `~/.config/nvim/init.vim` - enables Doc Mike's vimrc to run.
* `~/.local/share/nvim/site/autoload/plug.vim` - open-source plugin used to
  manage plugins. This file came from the location below and should not be
  customized. Also, there are two copies of this file; one to support vim
  and the other for Neovim.
    - https://github.com/junegunn/vim-plug

## Neovim Plugins

Handling external plugins (outside of Doc Mike's provided list) is now
handled via the `vim-plug` plugin.

### vim-plug (plug.vim) Plug-in Manager

The vim-plug plugin is bootstrapped to its required location by the
`plugin.vim` script, where `plug.vim` is placed in:
* `~/.vim/autoload/` for Vim
* `~/.local/share/nvim/site/` for Neovim
 See [plugin.vim](./plugin.vim) for implementation details.

### Unmanaged Plugins

Unmanaged plugins may be added by providing a path to the plugin source, for
example:

```vim
Plug "~/linux-config/repos/vimuserlocalfiles/path/to/plugin/plugin.vim"
```

### lua Plugins

Plugin-specific lua configuration should be located in the
`vimuserlocalfiles/lua/user/` directory. Nvim will look for lua files for
loading in a `lua/` directory on the runtimepath.

### Updating Plugins

* To install new plugins after modifying `plugins.vim`: `:PlugInstall --sync`
* To update plugins: `:PlugUpdate`

### Pin Plugin to a Tag or Branch

Example:

```vim
      Plug 'nvim-tree/nvim-tree.lua' { 'tag': 'compat-nvim-0.7' }
      **or**
      Plug 'nvim-tree/nvim-tree.lua' { 'branch': '<name of branch>' }
```

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
## Tips

To get the status of Neovim and its plugins: 
```
:checkhealth
```

To determine Python version:
```
:py3 import sys; print(sys.executable)
```

## To Do

* Determine plugin dependencies for Fedora.
* Fix funny characters in NvimTree.
* Install and setup LSP.
* Debug why null-ls is reporting errors.
* Copy tips from cweave72
* Debug why \gq doesn't format.
