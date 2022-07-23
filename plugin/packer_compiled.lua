-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/thien/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/thien/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/thien/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/thien/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/thien/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  fzf = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\2\ný\3\0\0\5\0\"\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \3=\3!\2B\0\2\1K\0\1\0\15fzf_colors\vborder\1\3\0\0\abg\vNormal\vgutter\1\3\0\0\abg\vNormal\vheader\1\3\0\0\afg\fComment\fspinner\1\3\0\0\afg\nLabel\vmarker\1\3\0\0\afg\fKeyword\fpointer\1\3\0\0\afg\14Exception\vprompt\1\3\0\0\afg\16Conditional\tinfo\1\3\0\0\afg\fPreProc\bhl+\1\3\0\0\afg\14Statement\bbg+\1\3\0\0\abg\15CursorLine\bfg+\1\3\0\0\afg\vNormal\ahl\1\3\0\0\afg\fComment\abg\1\3\0\0\abg\vNormal\afg\1\0\0\1\3\0\0\afg\15CursorLine\1\0\1\17preview_opts\vhidden\nsetup\ffzf-lua\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tchar\bâ”Š\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n›\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\1\ntheme\15everforest\rsections\1\0\0\14lualine_b\1\0\0\1\3\0\0\tdiff\16diagnostics\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-solarized-lua"] = {
    config = { "\27LJ\2\nÑ\a\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0±\a        hi! Normal guifg=#769ca5\n        hi! Visual gui=NONE term=NONE guifg=NONE guibg=#243940\n        hi! Search  guifg=#d8cf7e guibg=#224e54 gui=bold\n\n        highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080\n        \" blue\n        highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6\n        highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6\n        \" light blue\n        highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE\n        highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE\n        highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE\n        \" pink\n        highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0\n        highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0\n        \" front\n        highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4\n        highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4\n        highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-solarized-lua",
    url = "https://github.com/ishan9299/nvim-solarized-lua"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\tview\1\0\0\1\0\2\nwidth\3(\vheight\3(\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/thien/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tchar\bâ”Š\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-solarized-lua
time([[Config for nvim-solarized-lua]], true)
try_loadstring("\27LJ\2\nÑ\a\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0±\a        hi! Normal guifg=#769ca5\n        hi! Visual gui=NONE term=NONE guifg=NONE guibg=#243940\n        hi! Search  guifg=#d8cf7e guibg=#224e54 gui=bold\n\n        highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080\n        \" blue\n        highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6\n        highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6\n        \" light blue\n        highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE\n        highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE\n        highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE\n        \" pink\n        highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0\n        highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0\n        \" front\n        highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4\n        highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4\n        highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4\n      \bcmd\bvim\0", "config", "nvim-solarized-lua")
time([[Config for nvim-solarized-lua]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
try_loadstring("\27LJ\2\ný\3\0\0\5\0\"\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \3=\3!\2B\0\2\1K\0\1\0\15fzf_colors\vborder\1\3\0\0\abg\vNormal\vgutter\1\3\0\0\abg\vNormal\vheader\1\3\0\0\afg\fComment\fspinner\1\3\0\0\afg\nLabel\vmarker\1\3\0\0\afg\fKeyword\fpointer\1\3\0\0\afg\14Exception\vprompt\1\3\0\0\afg\16Conditional\tinfo\1\3\0\0\afg\fPreProc\bhl+\1\3\0\0\afg\14Statement\bbg+\1\3\0\0\abg\15CursorLine\bfg+\1\3\0\0\afg\vNormal\ahl\1\3\0\0\afg\fComment\abg\1\3\0\0\abg\vNormal\afg\1\0\0\1\3\0\0\afg\15CursorLine\1\0\1\17preview_opts\vhidden\nsetup\ffzf-lua\frequire\0", "config", "fzf-lua")
time([[Config for fzf-lua]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\tview\1\0\0\1\0\2\nwidth\3(\vheight\3(\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n›\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\1\ntheme\15everforest\rsections\1\0\0\14lualine_b\1\0\0\1\3\0\0\tdiff\16diagnostics\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
