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
keymap('i', 'L', '<Esc>A', { noremap = true, silent = true })
keymap('n', 'L', '<Esc>A', { noremap = true, silent = true })

keymap('i', 'H', '<Esc>I', { noremap = true, silent = true })
keymap('n', 'H', '<Esc>I', { noremap = true, silent = true })


-- fzf lua
-- keymap("n", "<Leader>t", ":lua require('fzf-lua').files()<CR>", opts)
-- keymap("n", "<Leader>b", ":lua require('fzf-lua').buffers()<CR>", opts)
-- keymap("n", "<Space>o", ":lua require('fzf-lua').lsp_document_symbols()<CR>", opts)
-- keymap("n", "<Space>a", ":lua require('fzf-lua').diagnostics_document()<CR>", opts)
-- keymap("n", "<Leader>r", ":lua require'fzf-lua'.files({ cmd = 'rg --color=never --files --hidden --no-ignore' })<CR>", opts)
-- keymap("n","<C-p>", ":FzfLua<CR>", opts)

-- nvim spectre
-- keymap("n", "<Leader>S", ":lua require('spectre').open()<CR>", opts)
-- keymap("n", "<Leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", opts)
-- keymap("v", "<Leader>s", "<esc>:lua require('spectre').open_visual()<CR>", opts)

-- --- nvim-tree
-- keymap('n', "<C-\\>", "<cmd>:NvimTreeFindFileToggle<CR>", opts)

-- --- show diagnostic at current line
-- keymap("n", "<Leader>d", ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>", opts)

-- -- split join
-- keymap("n", "sj", ":TSJToggle<CR>", opts)

-- -- nvim hop
-- vim.api.nvim_set_keymap('', ',g', "<cmd>lua require'hop'.hint_char1()<cr>", {})
-- vim.api.nvim_set_keymap('', ',G', "<cmd>lua require'hop'.hint_char2()<cr>", {})

-- -- symbol outline
-- vim.api.nvim_set_keymap('', '<Space>p', ":SymbolsOutline<cr>", {})

-- nvim-dap
-- vim.keymap.set('n', '<F9>', function() require"dap".toggle_breakpoint() end)
-- vim.keymap.set('n', '<F12>', function() require"dap".step_out() end)
-- vim.keymap.set('n', "<F11>", function() require"dap".step_into() end)
-- vim.keymap.set('n', '<F10>', function() require"dap".step_over() end)
-- vim.keymap.set('n', '<F5>', function() require"dap".continue() end)
-- vim.keymap.set('n', '<F6>', function() require"dap".terminate() end)
-- vim.keymap.set('n', '<F3>', function() require"dapui".toggle() end)
-- vim.keymap.set('n', '<F4>', function() require"dap".list_breakpoints() end)
-- vim.keymap.set('n', '<F7>', function() require"dap".clear_breakpoints() end)
-- vim.keymap.set('n', '<F2>', function() require'dapui'.eval() end)
-- vim.keymap.set('n', '<leader>dB', function() require"dap".clear_breakpoints() end)
-- vim.keymap.set('n', '<leader>de', function() require"dap".set_exception_breakpoints({"all"}) end)
-- vim.keymap.set('n', '<leader>da', function() require"debugHelper".attach() end)
-- vim.keymap.set('n', '<leader>dA', function() require"debugHelper".attachToRemote() end)
-- vim.keymap.set('n', '<leader>d?', function() local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes) end)
-- vim.keymap.set('n', '<leader>dk', ':lua require"dap".up()<CR>zz')
-- vim.keymap.set('n', '<leader>dj', ':lua require"dap".down()<CR>zz')
-- vim.keymap.set('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
