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
        ensure_installed = {"cssls", "ts_ls", "tailwindcss", "emmet_ls", "gopls", "clangd", "texlab"}
      })
    end
  },  
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.cssls.setup({
        capabilities = capabilities,
        settings = {
          css = { 
            lint = {
              unknownAtRules = "ignore"
            }
          }
        }
      })

      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })

      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        filetypes = { 'html', 'css', 'javascript', 'javascriptreact', 'typescriptreact', 'astro' },
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.texlab.setup({
        capabilities = capabilities,
        filetypes = { 'tex', 'plaintex' },
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  },
}
