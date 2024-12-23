-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.g.mapleader = " "
-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Split window
vim.keymap.set('n', '<leader>sv', '<C-w>v', opts)
vim.keymap.set('n', '<leader>sh', '<C-w>s', opts)


-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

--Plugins
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
-- Tab: Check the folder
-- o/<CR>: Open the file
--bufferline
vim.keymap.set('n', '<S-L>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-H>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<S-D>', ':bdelete<CR>', opts)


