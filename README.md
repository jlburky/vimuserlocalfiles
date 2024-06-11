vimuserlocalfiles
=================

Pre-reqs
--------
* Vim

Vim/Gvim Configuration
----------------------

Clone Doc Mike's `vimfiles` from the link below and install vim by following his
  `docs/notes`.
```
$ git clone git@github.com:drmikehenry/vimfiles.git
```

Link your `~/.vim` to the vimfiles clone:
```
$ cd ~
$ ln -fs /path/to/drmikehenry/vimfiles .vim
```

Add the following to your `~/.vimrc` file:
```
runtime vimrc
```

Clone this repo;
```
$ git clone git@github:jlburky/vimuserlocalfiles.git
```

In your `.bashrc`:
```
export VIMUSERLOCALFILES="/path/to/this/clone"
```

Doc Mike's `docs/notes/notes_customizations` explains this setup.

NeoVim
------

For NeoVim installation and configuration, refer to the [NeoVim
Guide](NEOVIM.md).

Directory Structure
-------------------

The following directory structure is used:

```
$VIMUSERLOCALFILES/
├── vimrc-vars.vim                # Enable/Disable bundle plugins (pathogen)
├── vimrc-after.vim               # User vimrc
├── plugins.vim                   # List of vim-plug plugins
├── lua                           # user lua modules
│   └── user                      # user namespace for lua inits
│       ├── init.lua              # user init for neovim
│       ├── lsp_config.lua        # user config for lsp's and completion
│       └── telescope             # user plugin-specific inits
│           ├── init.lua
│           └── mappings.lua
├── plugged                       # output dir for vim-plug
│   ├── plugin
│   ├── ...
│   ├── plugin
├── UltiSnips
│   └── custom snippets
```

Troubleshooting
---------------

### Python Errors
To see if Vim was compiled with `python` or `python3`, from the vim console type:
```
:echo has('python3')
```
It wlll return 0 or 1.

### Vim Compilation
To see the compilation features of your vim include version of python execute:
```
vim --version
```
To Do
-----
* Continue to test vim/nvim configurations on a new system.
* Relocate swap files.
* Setup nvim offline plugins.
