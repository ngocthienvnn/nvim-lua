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
      Search = {bg='#98817b'}
    }}
end
if (bg == 'dark') then
  onedark.setup {
    style = 'darker',
    highlights = {
      TSConstructor = {fg='#b69456'},
      TSPunctBracket = {fg='#d45b5b'},
    }
  }
end
