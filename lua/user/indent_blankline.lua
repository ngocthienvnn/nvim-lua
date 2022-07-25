local status_ok, indentBL = pcall(require, "indent_blankline")
if not status_ok then
  return
end

indentBL.setup({
  char = "┊",
})
