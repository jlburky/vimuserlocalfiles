" vim-plug modules here

" Bootstrap vim-plug, if necessary.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let plugvim = $VIMUSERLOCALFILES . '/plug.vim'
let autoload_dir = data_dir . '/autoload'
if empty(glob(data_dir . '/autoload/plug.vim'))
    echom "Copying " plugvim . " to " . autoload_dir
    silent execute '!cp ' . plugvim . ' ' . autoload_dir
endif

let plugged = $VIMUSERLOCALFILES . '/plugged/'

let offline_mode = 0

call plug#begin(plugged)

if offline_mode
    " Vim or Nvim plugins (see below for git paths for online mode)
    Plug plugged . 'ranger.vim'
    Plug plugged . 'Align'

    " Add neovim plugins.
    if has('nvim')
        Plug plugged . 'nvim-notify'

        "Telescope
        Plug plugged . 'telescope-fzf-native.nvim'

        "File managers
        Plug plugged . 'nvim-tree.lua'

        "Lsp related
        Plug plugged . 'nvim-lspconfig'
        Plug plugged . 'nvim-cmp'
        Plug plugged . 'cmp-nvim-lua'
        Plug plugged . 'cmp_luasnip'

        "Required by ranger.vim
        Plug plugged . 'bclose.vim'

        Plug plugged . 'undotree'

        "Nice colorscheme
        Plug plugged . 'nightfox.vim'
        Plug plugged . 'iceberg.vim'
        Plug plugged . 'melange'
        Plug plugged . 'sonokai'

    endif
else
    " Vim or NVim plugins
    Plug 'francoiscabrol/ranger.vim'
    Plug 'vim-scripts/Align'

    "Plug 'davidhalter/jedi-vim'   "using pyls now. Keep for reference.

    " Add neovim plugins.
    if has('nvim')
        Plug 'rcarriga/nvim-notify'

        "Telescope
        Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

        "File managers
        Plug 'nvim-tree/nvim-tree.lua'

        "Lsp related
        Plug 'neovim/nvim-lspconfig'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'hrsh7th/cmp-nvim-lua'
        Plug 'saadparwaiz1/cmp_luasnip'

        "Required by ranger.vim
        Plug 'rbgrouleff/bclose.vim'

        "Nice colorschemes
        Plug 'EdenEast/nightfox.nvim'
        Plug 'cocopon/iceberg.vim'
        Plug 'savq/melange'
        Plug 'sainnhe/sonokai'

        Plug 'mbbill/undotree'

        "Cheat.sh"
        Plug 'RishabhRD/popfix'
        Plug 'RishabhRD/nvim-cheat.sh'
    endif

endif

call plug#end()
