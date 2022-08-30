local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  onedark.setup {
    style = 'light',
    colors = {
      _bg = '#f3f3f3'
    },
    highlights = {
      Normal = {bg='$_bg'},
      SignColumn = {bg='$_bg'},
      EndOfBuffer = {bg='$_bg'},
      TSPunctBracket = {fg='#ce0000'},
      TSFunction = {fg='#3361c3', fmt='bold'},
      TSMethod = {fg='#3361c3', fmt='bold'},
      TSString = {fg='#40813f'},
      TSComment = {fg='#818187'},
      Pmenu = {bg='#dedede'},
      Search = {bg='#dadada', fg='NONE'},
      Visual = {bg='#dfdfdf'},
      TSProperty = {fg='#b20245'},
      MatchParen = {bg= '$_bg', fmt='bold', fg='black'}
    }}
end
if (bg == 'dark') then
  onedark.setup {
    style = 'darker',
    highlights = {
      TSConstructor = {fg='#b69456'},
      TSPunctBracket = {fg='#d45b5b'},
      TSOperator = {fg='#d45b5b'},
      MatchParen = {bg= '#1f2329', fmt='bold', fg='#f945c0'},
      Search = {bg='#464a54', fg='NONE'}
    }
  }
end
