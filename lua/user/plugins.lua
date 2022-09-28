local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  use "lewis6991/impatient.nvim"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight

  -- file manager
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly',
  }
  -- Colorschemes
  use {
    "jsit/toast.vim",
  }
  use {
    "ishan9299/nvim-solarized-lua",
  } 
  use 'navarasu/onedark.nvim'


  -- lsp
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'hrsh7th/cmp-nvim-lsp-signature-help' -- Display function signatures 


  use { 'junegunn/fzf', run = './install --bin', }
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Search text 
  use "windwp/nvim-spectre"

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }  
  use "nvim-treesitter/nvim-treesitter-textobjects"

  -- indent line 
  use { "lukas-reineke/indent-blankline.nvim" } 

  -- comment
  use {
    'numToStr/Comment.nvim'
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Auto pair plugin
  use {
    "windwp/nvim-autopairs"
  }

  -- Git 
  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release', -- To use the latest release
  }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- use {
  --   'airblade/vim-gitgutter'
  -- }
  -- split join
  use {
    'AckslD/nvim-trevJ.lua',
    config = 'require("trevj").setup()',  -- optional call for configurating non-default filetypes etc
  }

  -- outline
  use {
    'simrat39/symbols-outline.nvim',
    config = 'require("symbols-outline").setup()',  -- optional call for configurating non-default filetypes etc
  }

  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  } 

  -- Debugger
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- Scrolling
  use {
    'karb94/neoscroll.nvim'
  }

  -- windows
  use { "anuvyklack/windows.nvim",
    requires = "anuvyklack/middleclass",
    config = function()
      require('windows').setup()
    end
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
