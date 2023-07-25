vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap 

vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>:q", ':q<cr>')

vim.keymap.set('n','ss', ':split<Return><C-w>w')
vim.keymap.set('n','sv', ':vsplit<Return><C-w>w')


map('n', '<leader>e', ':NERDTreeToggle<cr>', {noremap = true, silent = false})
map('n', '<leader>q', ':q<cr>', {noremap = true, silent = false})
map('n', '<leader>w', ':w<cr>', {noremap = true, silent = false})
map('n', '<leader>wq', ':wq<cr>', {noremap = true, silent = false})
