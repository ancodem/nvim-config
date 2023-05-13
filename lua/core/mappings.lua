vim.g.mapleader = " "

-- Comments
vim.keymap.set('v', '<leader>/', ':CommentToggle<CR>')

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')

vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Other
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Tabs
vim.keymap.set('n', '<s-l>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-h>', ':BufferLineCyclePrev<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')

-- LazyGit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', {noremap = true, silent = true})

-- Plugin controls
vim.keymap.set('n', '<leader>pp', ':Lazy<CR>')

vim.keymap.set('n', '<leader>pm', ':Mason<CR>')
vim.keymap.set('n', '<leader>pu', ':Mason<CR>')

-- UI
vim.keymap.set('n', '<leader>ua', ':ASToggle<CR>')
