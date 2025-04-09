return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  name = "gruvbox",
  config = function()
    require("gruvbox").setup({
      terminal_colors = false,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = false,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false, 
      contrast = "hard",
      palette_overrides = {},
      overrides = {
        NeoTreeDirectoryIcon = { fg = "#83a598" },
        NeoTreeDirectoryName = { fg = "#83a598" },
      },
      dim_inactive = false,
      transparent_mode = false,
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
