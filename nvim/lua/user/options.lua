-- https://www.lunarvim.org/configuration/01-settings.html#example-options
-- :help options
local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- let neovim access the system clipboard
  cmdheight = 2,                           -- command line display messages more spaace
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- avoid -- INSERT -- display types
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- horizontal splits go below current window
  splitright = true,                       -- vertical splits go right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors, now widely supported
  timeoutlen = 1000,                       -- ms wait time for mapped sequence completion
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- number of spaces for each tab indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  colorcolumn = "80",                      -- vertical line at end of each row
  -- wrap = false,                            -- display lines as one long line
  wrap = true,                             -- wrap long lines
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- font used in graphical neovim apps
  spell = true,
  spelllang = "en",
}
vim.opt.shortmess:append "c"

-- DRY code style:
-- prepend all items in options list with vim.opt. scope, e.g.,
-- from: guifont = "monospace:h17" to: vim.opt.guifont = "monospace:h17"
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
