" vim-plug modules here

" Bootstrap vim-plug, if necessary.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let plugvim = $VIMUSERLOCALFILES . '/plug.vim'
let autoload_dir = data_dir . '/autoload'
" Check that plug.vim file does not exist
if empty(glob(data_dir . '/autoload/plug.vim'))
    " Check that autoload dir does not exist
    if empty(glob(autoload_dir))
        echom "Creating directory " . autoload_dir
        call mkdir(autoload_dir, "p", 0700)
    endif
    echom "Copying " plugvim . " to " . autoload_dir
    silent execute '!cp ' . plugvim . ' ' . autoload_dir
endif

let plugged = $VIMUSERLOCALFILES . '/plugged/'

call plug#begin(plugged)

" Both Vim and Neovim plugins
Plug 'vim-scripts/Align'

" The following Neovim plugins are already installed by vimfiles' nvim-bundle.
" 'cmp'
" 'cmp-buffer'
" 'cmp-cmdline'
" 'cmp-nvim-lsp'
" 'cmp-nvim-ultisnips'
" 'cmp-path'
" 'cscope_maps'
" 'lspconfig'
" 'melange'
" 'nightfox'
" 'null-ls'
" 'plenary'
" 'telescope'
" 'which-key'

" Neovim plugins
"if has('nvim')
"    Plug 'rcarriga/nvim-notify'
"
"    "Telescope
"    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"
"    "File managers
"    Plug 'nvim-tree/nvim-tree.lua'
"    Plug 'nvim-tree/nvim-web-devicons'
"
"    "Lsp related
"    Plug 'hrsh7th/cmp-nvim-lua'
"    Plug 'saadparwaiz1/cmp_luasnip'
"
"    Plug 'mbbill/undotree'
"
"    "Cheat.sh
"    Plug 'RishabhRD/popfix'
"    Plug 'RishabhRD/nvim-cheat.sh'
"
"    "Nice colorschemes
"    Plug 'cocopon/iceberg.vim'
"    Plug 'sainnhe/sonokai'
"
"endif

call plug#end()
