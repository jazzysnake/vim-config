local cmp = require 'cmp'
local lspkind = require 'lspkind'

cmp.setup({
    snippet = {
        expand = function(args)
            -- For `ultisnips` user.
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Esc>'] = cmp.mapping.close(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
    }),
    -- Installed sources:
    sources = {
        { name = 'path' }, -- file paths
        { name = 'nvim_lsp', keyword_length = 3 }, -- from language server
        { name = 'nvim_lsp_signature_help' }, -- display function signatures with current parameter emphasized
        { name = 'nvim_lua', keyword_length = 2 }, -- complete neovim's Lua runtime API such vim.lsp.*
        { name = 'buffer', keyword_length = 2 }, -- source current buffer
        { name = 'vsnip', keyword_length = 2 }, -- nvim-cmp source for vim-vsnip
        { name = 'ultisnips' }, -- For ultisnips user.
        { name = 'calc' }, -- source for math calculation
        { name = 'omni' },
        { name = 'emoji', insert = true, } -- emoji completion
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    completion = {
        keyword_length = 1,
        completeopt = "menu,noselect"
    },
    view = {
        entries = 'custom',
    },
    formatting = {
        fields = { 'menu', 'abbr', 'kind' },
        format = lspkind.cmp_format({
            mode = "text",
            menu = ({
                nvim_lsp = "[LSP]",
                ultisnips = "[US]",
                nvim_lua = "[Lua]",
                path = "[Path]",
                vsnip = '[Vsnip]',
                buffer = "[Buffer]",
                emoji = "[Emoji]",
                omni = "[Omni]",
            }),
        }),
    },
})
