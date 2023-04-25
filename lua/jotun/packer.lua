-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	'nvim-tree/nvim-tree.lua',
  	requires = {
    		'nvim-tree/nvim-web-devicons', -- optional
  	},
	
  	config = function()
    		require("nvim-tree").setup {}
  	end
  }

  use 'folke/tokyonight.nvim'

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use 'nvim-treesitter/nvim-treesitter-context'
  use('theprimeagen/harpoon')
  use("theprimeagen/refactoring.nvim")
  use('mbbill/undotree')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'yioneko/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
  }

  use("folke/zen-mode.nvim")
  use("laytan/cloak.nvim")
  use 'wakatime/vim-wakatime' 

end)
