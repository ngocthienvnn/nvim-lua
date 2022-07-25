local status_ok, impatient = pcall(require, "nvim-tree")
if not status_ok then
  return
end

require("nvim-tree").setup({
  view = {
    width = 40,
    height = 40,
  }
})
