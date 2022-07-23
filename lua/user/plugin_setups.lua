require("nvim-tree").setup({
  view = {
    width = 40,
    height = 40,
  }
})
require('fzf-lua').setup{
  preview_opts = 'hidden',
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
}
require('indent_blankline').setup({
  char = "┊",
})
require('Comment').setup()
require("nvim-autopairs").setup {};
