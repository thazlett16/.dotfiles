-- Set mapleader first for remainder of vim
vim.g.mapleader = " "

-- Exit to project-view - From Primeagen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- -- Move between windows from normal, insert, or terminal mode
-- vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
-- vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
-- vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
-- vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')
