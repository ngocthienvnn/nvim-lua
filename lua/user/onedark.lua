local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  onedark.setup {
    style = 'light',
    highlights = {
      Normal = {bg='#f7f7f7'},
      SignColumn = {bg='#f7f7f7'},
      TSPunctBracket = {fg='#ce0000'},
      TSFunction = {fg='#3361c3'},
      TSString = {fg='#40813f'}
    }}
end
if (bg == 'dark') then
  onedark.setup {
    style = 'darker',
    highlights = {
      TSConstructor = {fg='#b69456'}
    }
  }
end
