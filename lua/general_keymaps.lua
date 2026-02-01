-- general keymaps --
vim.keymap.set('n', '<leader>w', '<C-w>w', { desc = 'Next [w]indow split' })
vim.keymap.set('n', '<leader>ee', vim.cmd.Ex, { desc = '[E]xplore: r[e]turn to netrw' })
vim.keymap.set('n', '<leader>nt', '<cmd>tabnew<CR>', { desc = '[N]ew [T]ab' })
vim.keymap.set('n', '<leader>ns', '<cmd>vsp<CR>', { desc = '[N]ew Vertical [S]plit' })
vim.keymap.set('n', '<leader>ls', '<cmd>args ./src/**/*.*<CR>', { desc = '[L]oad all files in /[s]rc directory, recursively' })
vim.keymap.set('n', '<leader>lt', '<cmd>args ./tests/**/*.*<CR>', { desc = '[L]oad all files in /[t]ests directory, recursively' })
vim.keymap.set('n', '<leader>la', '<cmd>args ./*<CR>', { desc = '[L]oad [a]ll files in working directory, only.' })
vim.keymap.set('n', '<leader>lc', '<cmd>args ./CMakeLists.txt<CR>', { desc = '[L]oad [C]MakeLists.txt file in main project directory.' })

vim.keymap.set('n', '<leader>bt', '<cmd>bd! term:* | <C-a> | <CR>', { desc = 'Delete all [t]erminal buffers' })
vim.keymap.set('n', '<leader>bd', '<cmd>bd<CR>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>bq', '<cmd>close<CR>', { desc = 'Close current buffer' })

vim.keymap.set('n', '<leader>`', function()
  vim.cmd 'vsp | term'
end, { desc = 'Open terminal in new vertical split.' })

-- navigate between panes using Ctrl + hjkl
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

