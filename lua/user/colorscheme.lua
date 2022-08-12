function loadConfigs()
  local file = os.getenv( "HOME" ) .."/.nvim_kitty/nvim.lua"
  local _f = loadfile(file)
  return _f()
end
local ok, _f = pcall(loadConfigs)
local _bg = 'light'
local _theme = 'default'
if ok then
  _bg = _f['background']
  _theme = _f['colorscheme']
end

if not ok then
  local ok, _ = pcall(vim.cmd, 'colorscheme toast')
  vim.cmd 'set background=light'
  if not ok then
    vim.cmd 'colorscheme default' -- if the above fails, then use default
  end
end
--

vim.cmd("set background=".._bg)

if (_theme == 'onedark') then
  require "user.onedark"
  vim.cmd "colorscheme onedark"
else
  vim.cmd("colorscheme " .._theme)
end


if (_bg == 'dark' and _theme == 'solarized-flat') then
  vim.cmd [[
  hi! Normal guifg=#769ca5
  hi! Visual gui=NONE term=NONE guifg=NONE guibg=#243940
  hi! Search  guifg=#d8cf7e guibg=#224e54 gui=bold

  hi! CocUnusedHighLight guibg=#33444a

  highlight! DiagnosticUnderlineError  cterm=NONE guibg=#33444a  term=NONE
  highlight! DiagnosticUnderlineInfo  cterm=NONE guibg=#33444a term=NONE 
  highlight! DiagnosticUnderlineHint  cterm=NONE guibg=#33444a  term=NONE

  highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
  " blue
  highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
  highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
  " light blue
  highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
  " pink
  highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
  highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
  " front
  highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
  ]]
end
if (_bg == 'light' and _theme == 'toast') then
  vim.cmd[[
  hi! Normal ctermfg=223 guifg=#503f4e ctermbg=235 guibg=#f1f1f1
  hi! TSVariable guifg=#503f4e 
  hi! SignColumn guibg=#f1f1f1 gui=bold 
  hi! VertSplit term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE
  hi! LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE

  hi Pmenu  gui=bold cterm=NONE
  hi PmenuSel  gui=bold cterm=NONE
  " hi! Normal ctermfg=223 ctermbg=235 guibg=#F5F5F5
  hi! phpFunction gui=bold guifg=#AA3731
  hi! Function gui=bold guifg=#AA3731
  hi! Identifier guifg=#4D2764
  hi! phpMethod gui=bold guifg=#AA3731
  hi! Search guifg=#d1cfc8
  hi! Special guifg=#0014a8
  hi! IncSearch guifg=Grey gui=standout cterm=standout

  highlight! DiagnosticUnderlineError guifg=#625f57 cterm=NONE guibg=#d3d3d2  term=NONE
  highlight! DiagnosticUnderlineInfo guifg=#625f57 cterm=NONE guibg=#d3d3d2 term=NONE 
  highlight! DiagnosticUnderlineHint guifg=#625f57 cterm=NONE guibg=#d3d3d2  term=NONE

  hi DiagnosticError guifg=Red gui=bold
  hi DiagnosticWarn  guifg=DarkOrange gui=bold
  hi DiagnosticInfo  guifg=Blue gui=bold
  hi DiagnosticHint  guifg=Green gui=bold

  highlight GitGutterAdd     gui=bold
  highlight GitGutterChange  gui=bold
  highlight GitGutterDelete  gui=bold
  ]]
end

