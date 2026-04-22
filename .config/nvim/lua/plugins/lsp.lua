return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      local langs = require("langs")

      local lsp = vim.tbl_map(function(lang)
        return lang.lsp
      end, langs)
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_filter(function(x) return x ~= nil end, lsp)
      })
    end
  },
  {
    'neovim/nvim-lspconfig',

    config = function()
      local langs = require("langs")

      local lsp_servers = {}
      for _, lang in pairs(langs) do
        if lang.lsp then
          table.insert(lsp_servers, lang.lsp)
        end
      end

      for _, server in ipairs(lsp_servers) do
        vim.lsp.config(server, {})
        vim.lsp.enable(server)
      end
    end
  }
}
