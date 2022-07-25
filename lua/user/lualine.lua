local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local background = vim.opt.background:get()
local theme = vim.g.colors_name

-- setup lualine
local lualineOpts = {
  sections = {
    lualine_b = {'diff', 'diagnostics'},
  },
  options = {
    theme = 'auto'
  }
};
if (background == 'dark' and theme == 'solarized-flat') then
  lualineOpts['options']['theme'] = 'everforest';
end
if (background == 'light' and theme == 'toast') then
  lualineOpts['options']['theme'] = 'Tomorrow';
end

lualine.setup(lualineOpts)


