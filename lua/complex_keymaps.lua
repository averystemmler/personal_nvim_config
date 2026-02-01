-- keymaps with more complex implementation

-- -- switch between header and source files. Just hpp and cpp at the moment.
-- -- TODO: Actually use this function.
-- local function is_header()
--   local cpp_headers = { 'hpp', 'h' }
--   local cpp_sources = { 'cpp' }
--   local map = { cpp_headers, cpp_sources }
--   local filename = vim.fn.expand '%:e'
-- end

-- Naively switch between .cpp and .hpp files, with otherwise equal filepaths
local function switchHeaderSource()
  local ext = vim.fn.expand '%:e'
  print(ext)
  if ext == 'hpp' then
    vim.cmd 'edit %<.cpp'
  elseif ext == 'cpp' then
    vim.cmd 'edit %<.hpp'
  else
    print('Extention ' .. ext .. ' not accounted for.  Doing nothing')
  end
  return 'Done'
end
vim.keymap.set('n', '<leader>o', function()
  switchHeaderSource()
end, {})
vim.keymap.set('n', '<leader>no', function()
  vim.cmd 'vsp'
  switchHeaderSource()
end, { desc = '[N]ew header/s[o]urce in verticle split' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<C-c>', '<cmd>nohlsearch<CR>') -- disable highlighting after hitting Ctrl-C too

vim.keymap.set(
    'n', '<leader>q', vim.diagnostic.setloclist, { 
        desc = 'Open diagnostic [Q]uickfix list' }) -- Diagnostic keymaps




