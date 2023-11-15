return {
  "nvim-pack/nvim-spectre",
  config = function ()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local opts = { noremap = true, silent = true }

    keymap.set("n", "<Leader>S", ":lua require('spectre').open()<CR>", opts)
    keymap.set("n", "<Leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", opts)
    keymap.set("v", "<Leader>s", "<esc>:lua require('spectre').open_visual()<CR>", opts)
  end
}
