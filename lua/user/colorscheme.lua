vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
vim.cmd [[
try
  "colorscheme solarized-flat
  "set background=dark

colorscheme github_light
  set background=light
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
