local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
-- new tab
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<Return>', opts)
-- move tab right
vim.api.nvim_set_keymap('n', '<leader>tr', ':gt', opts)
-- move tab left
vim.api.nvim_set_keymap('n', '<leader>tl', ':gT', opts)

-- Fern Key Map
-- open Fern
vim.api.nvim_set_keymap('n', '<leader>f', ':Fern . -drawer<Return>', opts)

-- Telescope Key Map
-- Telescope find_files
vim.api.nvim_set_keymap('n', '<leader>ti', ':Telescope find_files', opts)
-- Telescope live_greps
vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope live_grep', opts)
-- Telescope frecency
vim.api.nvim_set_keymap('n', '<leader>tf', ':Telescope frecency', opts)
