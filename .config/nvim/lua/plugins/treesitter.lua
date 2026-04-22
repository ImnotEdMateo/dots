return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    local langs = require("langs")

    local ts = vim.tbl_map(function(lang)
      return lang.ts
    end, langs)

    local configs = require("nvim-treesitter")
    configs.setup({
      ensure_installed = vim.tbl_filter(function(x)
        return x ~= nil
      end, ts),
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
