local colorscheme = "moonfly"

vim.g.moonflyItalics = false
vim.g.moonflyCursorColor = true
vim.g.moonflyTransparent = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

