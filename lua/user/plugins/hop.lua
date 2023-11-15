return {
  "phaazon/hop.nvim", branch="v2",
  config = function ()
    local hop = require("hop")
    hop.setup({
      keys = 'etovxqpdygfblzhckisuran'
    });

    -- set keymaps
    vim.api.nvim_set_keymap('', ',g', "<cmd>lua require'hop'.hint_char1()<cr>", {})
    vim.api.nvim_set_keymap('', ',G', "<cmd>lua require'hop'.hint_char2()<cr>", {})
  end
};
