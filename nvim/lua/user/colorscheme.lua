-- Instead of specifying the colorscheme through vim script:
-- vim.cmd "colorscheme default"
-- we implement the same but with error handling in lua

local cs = "default"  -- the desire default colorscheme is also called default

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. cs)
if not status_ok then
  vim.notify("colorscheme " .. cs .. " not found.")
  return
end

