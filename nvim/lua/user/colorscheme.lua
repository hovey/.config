-- Instead of specifying the colorscheme through vim script:
-- vim.cmd "colorscheme default"
-- we implement the same but with error handling in lua

-- local cs = "default"  -- the desired default colorscheme is also called "default"
-- local cs = "tokyonight"  -- the desired default colorscheme
local cs = "darkplus"  -- the desired default colorscheme, used by ChrisAtMachine

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. cs)
if not status_ok then
  vim.notify("'colorscheme " .. cs .. "' not found, reverting to 'colorscheme default'")
  return
end

