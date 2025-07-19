return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"python", "html", "css", "javascript", "typescript", "lua", "htmldjango", "gomod", "gosum", "go"},
        highlight = { enable = true},
        indent = { enable = true},
      })
    end
  },
  {
    "davidmh/mdx.nvim",
    config = true,
    dependencies = {"nvim-treesitter/nvim-treesitter"}
  }
}
