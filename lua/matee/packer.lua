-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Dark color scheme
  use 'folke/tokyonight.nvim'
  -- lsp config 
  use 'neovim/nvim-lspconfig'
  -- lsp installer
  use {
      'junnplus/lsp-setup.nvim',
      requires = {
          'neovim/nvim-lspconfig',
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',
          }
    }
  -- java lsp
  use 'mfussenegger/nvim-jdtls'
  -- lsp completion
  use {
    "hrsh7th/nvim-cmp",
    requires = {
        "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
        'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
        'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
        'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
    }
  }
  -- lsp completion pictograms
  use 'onsails/lspkind.nvim'
  end)
