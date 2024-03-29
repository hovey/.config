local fn = vim.fn

-- Automatically install packer if not already existing
-- Plugins live at ~/.local/share/nvim/site/pack/packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we avoid error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- CBH prefers the right-hand-side buffer panel instead of the pop up, so
-- comment out the pop up window:
-- Have packer use a popup window
-- packer.init {
--   display = {
--     open_fn = function()
--       return require("packer.util").float { border = "rounded" }
--     end,
--   },
-- }

-- Plugins get installed here:
-- /Users/chovey/.local/share/nvim/site/pack/packer/start
-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here GitHub repository reference as "user/repo"
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  -- use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  -- use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons" -- nvimtree icons
  use "kyazdani42/nvim-tree.lua" -- nvimtree
  use "akinsho/bufferline.nvim" -- bufferline
  use "moll/vim-bbye" -- bufferline utility
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"

  -- Colorschemes
  use "folke/tokyonight.nvim"
  use "lunarvim/darkplus.nvim"
  use "lukas-reineke/onedark.nvim"

  -- cmp plugins (completions plugin)
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- command line completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of community snippets

  -- LSP (Language Server Protocol)
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope (07-Telescope video) https://youtu.be/OhnLevLpGB4
  use "nvim-telescope/telescope.nvim"
  -- use "nvim-telescope/telescope-media-files.nvim"

  -- Treesitter (08-Treesitter video) https://youtu.be/hkxPa5w3bZ0
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",  -- used with maintained setting
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow" -- rainbow parenthesis

  -- Git with Gitsigns
  -- Github branch 11/22 https://github.com/LunarVim/Neovim-from-scratch/blob/11-gitsigns/lua/user/gitsigns.lua)
  -- Youtube video 14/18 https://youtu.be/ZgyVY7tArwg
  use "lewis6991/gitsigns.nvim"

  -- https://github.com/lukas-reineke/indent-blankline.nvim
  use "lukas-reineke/indent-blankline.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

