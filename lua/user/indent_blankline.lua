local status_ok, indentBL = pcall(require, "ibl")
if not status_ok then
  return
end

indentBL.setup({
  scope = {
    show_start = false,
    show_end = false,
  },
  indent = { char = ':' }
})
