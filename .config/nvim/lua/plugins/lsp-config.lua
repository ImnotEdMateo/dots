return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"html", "cssls", "tsserver"},
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.html.setup({
                filetypes = {'html', 'htmldjango'},
                capabilities = capabilities,
                init_options = {
                    configurationSection = { "html", "htmldjango" },
                    embeddedLanguages = { css = true, javascript = true }
                },
                settings = {},
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    }
}