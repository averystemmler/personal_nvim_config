-- add mini.nvim with neovim's internal package manager--
-- Basically following the guide at github.com/nvim-mini/mini.nvim, but cloning the repo myself
-- instead of having this init file do it.
local path_package = vim.fn.stdpath('data') .. '/site'
local mini_path = path_package .. '/pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
    vim.cmd('packadd mini.nvim | helptags ALL')
    vim.cmd('echo "Added mini.nvim with built-in package manager" | redraw')
end

-- enabled individual mini modules --
require('mini.ai').setup()
require('mini.align').setup()
require('mini.completion').setup()
require('mini.surround').setup()

require('mini.bracketed').setup()
require('mini.clue').setup({
    triggers = {
        { mode = { 'n', 'x' }, keys = '<Leader>' },
        { mode = { 'n', 'x' }, keys = 'g' },
    }
})
-- TODO: set buffer picker to keymap
require('mini.pick').setup()

-- set colorscheme --
require('mini.hues').setup({background='#090a0d', foreground='#aaccff', n_hues = 8, saturation = 'high'})

-- mini function keymaps
local minipick = require('mini.pick')
vim.keymap.set('n', '<leader><leader>', minipick.builtin.buffers, { desc = 'MiniPick select buffers' })

