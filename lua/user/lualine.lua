local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local background = vim.opt.background:get()
local theme = vim.g.colors_name

-- setup lualine
local opts = {
  sections = {
    lualine_b = {'diff', 'diagnostics'},
  },
  options = {
    theme = 'auto'
  }
};
if (background == 'light' and theme == 'onedark') then

  local custom_onelight = require'lualine.themes.onelight'
  custom_onelight.normal.c.bg = '#d8cdd0'

  opts['options']['theme'] = custom_onelight;
end

lualine.setup(opts)


