-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local u = require 'adwaita-colorful.utils'
local adwaita_colorful = {}
local colors = {}

colors = u.gen_colors()


local bg = vim.o.background == 'dark' and colors.libadwaita_dark_alt or colors.light_3
local fg = vim.o.background == 'dark' and colors.light_2 or colors.dark_3


adwaita_colorful.normal = {
    a = { fg = bg, bg = colors.teal_5, gui = 'bold' },
    b = { fg = colors.teal_5, bg = vim.o.background == 'dark' and colors.dark_4 or colors.light_4 },
    c = { fg = fg, bg = bg },
}

adwaita_colorful.visual = {
    a = { fg = bg, bg = colors.blue_5, gui = 'bold' },
    b = { fg = colors.blue_5, bg = bg },
}

adwaita_colorful.inactive = {
    b = { fg = fg, bg = bg },
    a = { fg = fg, bg = bg, gui = 'bold' },
}

adwaita_colorful.replace = {
    a = { fg = bg, bg = colors.purple_4, gui = 'bold' },
    b = { fg = colors.purple_2, bg = colors.dark_4 },
    c = { fg = fg, bg = bg },
}

adwaita_colorful.insert = {
    a = { fg = bg, bg = colors.orange_4, gui = 'bold' },
    b = { fg = colors.orange_1, bg = vim.o.background == 'dark' and colors.dark_4 or fg },
    c = { fg = fg, bg = bg },
}

return adwaita
