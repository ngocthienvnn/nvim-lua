local status_ok, nvimtree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvimtree.setup({
  view = {
    width = 40,
    height = 40,
  }
})
