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

-- git/diff --
require('mini.diff').setup()
vim.keymap.set('n', 'gG', function()
    MiniDiff.toggle_overlay(0)
end, { desc = "Toggle mini.diff overlay for the current buffer" }
)
-- other mini.diff functions come with default keybinds.  From the documentation:
-- vip followed by gh / gH applies/resets hunks inside current paragraph. Same can be achieved in operator form ghip / gHip, which has the advantage of being dot-repeatable.
-- gh_ / gH_ applies/resets current line (even if it is not a full hunk).
-- ghgh / gHgh applies/resets hunk range under cursor.
-- dgh deletes hunk range under cursor.
-- [H / [h / ]h / ]H navigate cursor to the first / previous / next / last hunk range of the current buffer.

-- set appearance --
require('mini.cursorword').setup()

-- mini function keymaps
local minipick = require('mini.pick')
vim.keymap.set(
    'n', '<leader><leader>', minipick.builtin.buffers, { desc = 'MiniPick select buffers' }
)
vim.keymap.set(
    'n', '<leader>g', minipick.builtin.grep_live, { desc = 'MiniPick [g]rep' }
)
