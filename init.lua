require "plugins"
require "setting"
require "keymap"
require "101-lualine"
require "102-tokyonight"
require "103-toggleterm"

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})
