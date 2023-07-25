vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap 

vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>:q", ':q<cr>')

-- split window
vim.keymap.set('n','ss', ':split<Return><C-w>w')
vim.keymap.set('n','sv', ':vsplit<Return><C-w>w')

-- Move window
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')

map('n', '<leader>e', ':NERDTreeToggle<cr>', {noremap = true, silent = false})
map('n', '<leader>q', ':q<cr>', {noremap = true, silent = false})
map('n', '<leader>w', ':w<cr>', {noremap = true, silent = false})
map('n', '<leader>wq', ':wq<cr>', {noremap = true, silent = false})
