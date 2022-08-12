local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  onedark.setup {
    highlights = {
      Normal = {bg='#f9f9f9'},
      TSPunctBracket = {fg='#ce0000'},
      TSFunction = {fg='#3361c3'}
    }}
end
if (bg == 'dark') then
  onedark.setup {
    highlights = {
    }}
end
