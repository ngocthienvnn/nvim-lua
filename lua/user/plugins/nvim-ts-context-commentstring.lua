return {
  'JoosepAlviste/nvim-ts-context-commentstring',
  config = function()
    require('nvim-treesitter.configs').setup {
      enable_autocmd = false
    }
  end,
}
