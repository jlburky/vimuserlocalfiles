" vim-plug modules here

" Bootstrap vim-plug, if necessary.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let plugvim = $VIMUSERLOCALFILES . '/plug.vim'
let autoload_dir = data_dir . '/autoload'
if empty(glob(data_dir . '/autoload/plug.vim'))
    if !isdirectory(autoload_dir)
        echom "Creating directory " . autoload_dir
        call mkdir(autoload_dir, "p", 0700)
    endif
    echom "Copying " plugvim . " to " . autoload_dir
    silent execute '!cp ' . plugvim . ' ' . autoload_dir
endif

let plugged = $VIMUSERLOCALFILES . '/plugged/'

" Path to Doc Mike's NVIM-specific bundles.
let nvim_bundle = $HOME . '/.vim/nvim-bundle/'

call plug#begin(plugged)

    " Vim or Neovim plugins
Plug 'francoiscabrol/ranger.vim'
Plug 'vim-scripts/Align'

" Neovim plugins
if has('nvim')
    Plug 'rcarriga/nvim-notify'

    "Telescope
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    "File managers
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'nvim-tree/nvim-web-devicons'

    "Lsp related
    "Plug 'neovim/nvim-lspconfig'
    "Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'saadparwaiz1/cmp_luasnip'

    "Required by ranger.vim
    Plug 'rbgrouleff/bclose.vim'

    Plug 'mbbill/undotree'

    "Cheat.sh"
    Plug 'RishabhRD/popfix'
    Plug 'RishabhRD/nvim-cheat.sh'

    "Nice colorschemes
    Plug 'EdenEast/nightfox.nvim'
    Plug 'cocopon/iceberg.vim'
    Plug 'savq/melange'
    Plug 'sainnhe/sonokai'

    " cscope_maps dependencies
    Plug 'dhananjaylatkar/cscope_maps.nvim'

    "Add Doc Mike baseline bundled plugins.
    Plug nvim_bundle . 'cmp'
    Plug nvim_bundle . 'cmp-buffer'
    Plug nvim_bundle . 'cmp-cmdline'
    Plug nvim_bundle . 'cmp-nvim-lsp'
    Plug nvim_bundle . 'cmp-nvim-ultisnips'
    Plug nvim_bundle . 'cmp-path'
    Plug nvim_bundle . 'lspconfig'
    Plug nvim_bundle . 'null-ls'
    Plug nvim_bundle . 'plenary'
    Plug nvim_bundle . 'telescope'
    Plug nvim_bundle . 'which-key'
endif

call plug#end()
