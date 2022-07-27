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

vim.cmd("hi! link NvimTreeNormal  Normal")
vim.cmd("hi! link NvimTreeVertSplit  VertSplit")
vim.cmd("hi! link NvimTreeEndOfBuffer Normal")
