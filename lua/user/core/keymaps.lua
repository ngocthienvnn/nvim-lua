local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

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

-- paste over without overwriting register
keymap("v", "p", '"_dP', opts)

--  Make 0 go to the first character rather than the beginning of the line
keymap("n", "0", "^", opts)
keymap("n", "^", "0", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Save file
keymap('i', "<C-;>","<esc>:w<CR>", opts)
keymap('n', "<C-;>",":w<CR>", opts)

-- split windows
keymap("n", "vv", "<C-w>v", opts)
keymap("n", "ss", "<C-w>s", opts)

-- Move cursor to end of line
vim.api.nvim_set_keymap('i', '<C-\'>', '<Right><Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-\'>', '<Right><Right>', { noremap = true, silent = true })


-- Close quickfix window
keymap("n", "qq", ":cclose<CR>", opts)

