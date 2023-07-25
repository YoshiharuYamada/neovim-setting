-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'
  -- Lean & mean status/tabline for vim that's light as air.
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- General purpose asynchronous tree viewer written in pure Vim script.
  use 'lambdalisue/fern.vim'
  -- A highly extendable fuzzy finder over lists. 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  -- A dark and light Neovim theme written in Lua ported from the Visual Studio Code TokyoNight theme. 
  use {
    'folke/tokyonight.nvim', lazy = false, priority = 1000, opts = {}
  }
  -- A neovim plugin to persist and toggle multiple terminals during an editing session
  use {
    "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
  -- A Fast & Minimalism Style Code Completion Plugin for vim/nvim.
  use { 'jayli/vim-easycomplete' }
  use { 'SirVer/ultisnips' }
end)
