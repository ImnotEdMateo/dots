return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"python", "html", "css", "javascript", "lua", "htmldjango"},
      highlight = { enable = true},
      indent = { enable = true},
    })
  end
}
