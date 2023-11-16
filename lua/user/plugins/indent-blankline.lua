return { "lukas-reineke/indent-blankline.nvim", main = "ibl",
  config=function ()
    local ibl = require("ibl")
    ibl.setup({
      scope = {
        show_start = false,
        show_end = false,
        enabled = false
      },
      indent = { char = ':' },
    });
  end
}
