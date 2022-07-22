local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- nohl
keymap("n", "//", ":nohlsearch<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- split windows
keymap("n", "vv", "<C-w>v", opts)
keymap("n", "ss", "<C-w>s", opts)

-- fzf lua
keymap("n", "<Leader>t", ":lua require('fzf-lua').files()<CR>", opts)
keymap("n", "<Leader>b", ":lua require('fzf-lua').buffers()<CR>", opts)
keymap("n", "<Space>o", ":lua require('fzf-lua').lsp_document_symbols()<CR>", opts)
keymap("n", "<Space>a", ":lua require('fzf-lua').diagnostics_document()<CR>", opts)

-- nvim spectre
keymap("n", "<Leader>S", ":lua require('spectre').open()<CR>", opts)
keymap("n", "<Leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", opts)
keymap("v", "<Leader>s", "<esc>:lua require('spectre').open_visual()<CR>", opts)

--- nvim-tree
keymap('n', "<C-\\>", "<cmd>:NvimTreeFindFileToggle<CR>", opts)

--- show diagnostic at current line
keymap("n", "<Leader>d", ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>", opts)


