vim.g.have_nerd_font = false
vim.o.number = true -- always show line numbers
vim.o.relativenumber = false -- relative line numbers
vim.o.mouse = 'a' -- enable mouse mode
vim.o.showmode = false -- don't constantly show that mouse mode is enabled

vim.o.breakindent = true -- preserve indent on wrapped lines
vim.o.undofile = true -- save undo history to file

vim.o.ignorecase = true -- ignore case when searching
vim.o.smartcase = true -- case-aware if \C or search contains caps

vim.o.signcolumn = 'yes' -- default the signcolumn on
vim.o.updatetime = 250 -- set update time to lower than default (4000). Used by various plugins

vim.o.timeoutlen = 300 -- decrease mapped sequence wait time to read single keystrokes as single keys with less delay

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- display listed whitespace characters as shown
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split' -- preview substitutions 

vim.o.cursorline = false -- loudly show which line cursor is on
vim.o.scrolloff = 10 -- min lines above and below cursor

vim.o.confirm = true -- allow quitting without saving, with confirmation

-- tab settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.wrap = false

