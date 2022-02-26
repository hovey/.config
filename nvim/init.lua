-- Based on https://www.youtube.com/c/ChrisAtMachine/playlists
-- require "~/.config/nvim/lua/user/options.lua"
require "user.options"

-- require "~/.config/nvim/lua/user/keymaps.lua"
require "user.keymaps"

-- use packer.nvim as the plugin manager
-- https://github.com/wbthomason/packer.nvim
-- require "~/.config/nvim/lua/user/plugins.lua"
require "user.plugins"

-- require "~/.config/nvim/lua/user/colorscheme.lua"
require "user.colorscheme"

-- require "~/.config/nvim/lua/user/cmp.lua"
require "user.cmp"

-- require "~/.config/nvim/lua/user/lsp/" folder and contents
-- this automatically loads
-- ~/.config/nvim/lua/user/lsp/init.lua
-- that is, lsp is a folder, and then lua automatically searches for
-- the init.lua within that lsp folder
require "user.lsp"

-- require "~/.config/nvim/lua/user/telescope.lua"
require "user.telescope"

-- require "~/.config/nvim/lua/user/treesitter.lua"
require "user.treesitter"

-- require "~/.config/nvim/lua/user/gitsigns.lua"
require "user.gitsigns"

-- require "~/.config/nvim/lua/user/nvim-tree.lua"
require "user.nvim-tree"

-- require "~/.config/nvim/lua/user/bufferline.lua"
require "user.bufferline"

-- require "~/.config/nvim/lua/user/lualine.lua"
require "user.lualine"
