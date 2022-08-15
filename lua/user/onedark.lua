local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  onedark.setup {
    style = 'light',
    highlights = {
      Normal = {bg='#f3f3f3'},
      SignColumn = {bg='#f3f3f3'},
      TSPunctBracket = {fg='#ce0000'},
      TSFunction = {fg='#3361c3', fmt='bold'},
      TSString = {fg='#40813f'}
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
