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
  opts['options']['theme'] = 'Tomorrow';
end

lualine.setup(opts)


