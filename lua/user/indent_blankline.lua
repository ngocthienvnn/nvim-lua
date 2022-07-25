local status_ok, impatient = pcall(require, "indent_blankline")
if not status_ok then
  return
end

require('indent_blankline').setup({
  char = "┊",
})
