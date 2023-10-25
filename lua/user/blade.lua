vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
   pattern = "*.blade",
   callback = function()
      vim.api.nvim_set_option("filetype", "html")
   end
})
