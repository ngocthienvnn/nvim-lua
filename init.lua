require "user.core.init"
require "user.lazy"

vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})
