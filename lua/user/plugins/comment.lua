return {
  "numToStr/Comment.nvim",
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")
    comment.setup {
      pre_hook = function()
        return vim.bo.commentstring
      end,
    }

  end,
}
