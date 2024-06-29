local utils = require('user.utils')

-- Custom functions
function ShowRtp()
    local rtpList = utils.split(vim.o.runtimepath, ',')
    table.insert(rtpList, 1, "-- runtimepath --")
    utils.floatwin(rtpList)
end

-- Set to enable nvim truecolor (true) or 256 (false)
print("Setting nvim to emit 256 colours instead of true colour.")
vim.opt.termguicolors = false

-- Set user's colorscheme
--vim.cmd("colorscheme iceberg")
--vim.cmd("colorscheme nordfox")
--vim.cmd("colorscheme nightfox")
vim.cmd("colorscheme sonokai")

--require('nightfox').load('nightfox')
--require('nightfox').load('nordfox')

-- Load Lua user initializations
require('user.mappings')
require('user.lsp_config')

-- Everything below requires more than just the vimfiles' nvim-bundle
--require('user.telescope.init')
--
---- nvim-tree setup
--require('user.nvim-tree.init')
--
---- Set Vim's notify function to use notify-nvim
--vim.notify = require('notify')
