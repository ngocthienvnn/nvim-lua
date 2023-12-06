return {
  "numToStr/Comment.nvim",
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")
    comment.setup {
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
    }
  end,
}
