local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  print 'thien - light'
  onedark.setup {
    highlights = {
      TSPunctBracket = {fg='#ce0000'},
      TSFunction = {fg='#3361c3'}
    }}
end
if (bg == 'dark') then

  onedark.setup {
    style = 'light',
    toggle_style_key = "<Leader>qq", -- Default keybinding to toggle,
    highlights = {
      TSKeyword = {fmt='none', fg='red'},
    }}
end
