vim.cmd [[
try
  colorscheme solarized-flat
  set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
