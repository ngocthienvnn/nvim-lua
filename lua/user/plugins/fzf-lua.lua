return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      fzf_colors = {
        ['fg'] = { 'fg', 'CursorLine' },
        ['bg'] = { 'bg', 'Normal' },
        ['hl'] = { 'fg', 'Comment' },
        ['fg+'] = { 'fg', 'Normal' },
        ['bg+'] = { 'bg', 'CursorLine' },
        ['hl+'] = { 'fg', 'Statement' },
        ['info'] = { 'fg', 'PreProc' },
        ['prompt'] = { 'fg', 'Conditional' },
        ['pointer'] = { 'fg', 'Exception' },
        ['marker'] = { 'fg', 'Keyword' },
        ['spinner'] = { 'fg', 'Label' },
        ['header'] = { 'fg', 'Comment' },
        ['gutter'] = { 'bg', 'Normal' },
        ['border'] = { 'bg', 'Normal' },
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local opts = { noremap = true, silent = true }
    keymap.set("n", "<Leader>t", ":lua require('fzf-lua').files()<CR>", opts)
    keymap.set("n", "<Leader>b", ":lua require('fzf-lua').buffers()<CR>", opts)
    -- keymap.set("n", "<Space>o", ":lua require('fzf-lua').lsp_document_symbols()<CR>", opts)
    keymap.set("n", "<Space>a", ":lua require('fzf-lua').diagnostics_document()<CR>", opts)
    keymap.set("n", "<Leader>r", ":lua require'fzf-lua'.files({ cmd = 'rg --color=never --files --hidden --no-ignore' })<CR>", opts)
    -- keymap.set("n","<C-p>", ":FzfLua<CR>", opts)
  end
}
