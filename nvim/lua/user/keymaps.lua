-- From ChrisAtMachine
-- https://youtu.be/435-amtVYJ8
 
-- no recurse map is "noremap", silent so we don't see the output for the keymap
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
-- The first key in a chord of keystrokes to invoke custom key maps
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation, jumping between horizonal and vertical splits
-- Example:
-- Previously, CTRL+w+k for move up
-- Now, CTRL+k for move up
keymap("n", "<C-h>", "<C-w>h", opts)  -- jump to left split
keymap("n", "<C-j>", "<C-w>j", opts)  -- jump to down split
keymap("n", "<C-k>", "<C-w>k", opts)  -- jump to up split
keymap("n", "<C-l>", "<C-w>l", opts)  -- jump to right split

-- Left explore (Lexplore) 30 columns and carriage return
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize the veritical and horizontal splits with CTRL+arrow keys
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers which are like tab on top of window with Shift+L or Shift+H
keymap("n", "<S-l>", ":bnext<CR>", opts)  -- left
keymap("n", "<S-h>", ":bprevious<CR>", opts) -- right
--
-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)
-- Chad prefers jj
keymap("i", "jj", "<ESC>", opts)
-- consider mapping capslock also to <ESC>

-- Visual --
-- Stay in indent mode, instead of "once-and-done" default
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down, A is for the Alt key
keymap("v", "<A-j>", ":m .+1<CR>==", opts)  -- Alt+j to move text down
keymap("v", "<A-k>", ":m .-2<CR>==", opts)  -- Alt+k to move text up

-- Retain the buffer that was yanked, but don't successively overwrite the yank buffer
-- instead, retain the original
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

