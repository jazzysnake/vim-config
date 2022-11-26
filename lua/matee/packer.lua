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
    use 'sirver/ultisnips'
    -- lsp completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-emoji',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
            'quangnguyen30192/cmp-nvim-ultisnips',
            'octaltree/cmp-look',
            'f3fora/cmp-spell',
        }
    }
    -- lsp completion pictograms
    use 'onsails/lspkind.nvim'
    use 'simrat39/rust-tools.nvim'
    -- firefox vim textbox plugin
    --use {
    --    'glacambre/firenvim',
    --    run = function() vim.fn['firenvim#install'](0) end
    --}
    use {
        's1n7ax/nvim-terminal',
        config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
        end,
    }
end)
