return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'L3MON4D3/LuaSnip'
    },
    config = function()
        local cmp = require'cmp'
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            formatting = {
                format = require 'lspkind'.cmp_format {
                    mode = "symbol_text",
                    menu = {
                        nvim_lsp = "[LSP]",
                        buffer = "[Buffer]",
                        latex_symbols = "[Latex]",
                        luasnip = "[LuaSnip]",
                    }
                }
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.setup({
                { name = 'nvim_lsp'},
                { name = 'luasnip' },
                { name = 'buffer' },
            }),
        })
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig')['lua_ls'].setup {
            capabilities = capabilities
        }
    end
}
