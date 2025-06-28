vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "adwaita-colorful"

if vim.o.background == 'dark' then
    local adwaita_dark = require'adwaita-colorful.dark'
    adwaita_dark.set()
else
    local adwaita_light = require'adwaita-colorful.light'
    adwaita_light.set()
end
