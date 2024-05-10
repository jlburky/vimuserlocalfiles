vimuserlocalfiles
=================

Pre-reqs
--------

* Ubuntu 20.04
* `flake8` package
* Clone Doc Mike's vim from the link below and install vim by following his
  `docs/notes`.
  - https://github.com/drmikehenry/vimfiles

* Link your `~/.vim` to the vimfiles clone:
```
$ cd ~
$ ln -fs /path/to/drmikehenry/vimfiles .vim
```

* Add the following to your `~/.vimrc` file:
```
runtime vimrc
```

Vim/Gvim Installation
---------------------

Clone this repo;
```
$ git clone git@github:jlburky/vimuserlocalfiles.git
```

In your `.bashrc`:
```
export VIMUSERLOCALFILES="/path/to/this/clone"
```

Doc Mike's `docs/notes/notes_customizations` explains this setup.

### NeoVim
For NeoVim installation and configuration, refer to the [NeoVim
Guide](NEOVIM.md).
