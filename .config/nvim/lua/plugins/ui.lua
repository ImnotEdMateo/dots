return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    name = "gruvbox",
    config = function()
      require("gruvbox").setup({
        terminal_colors = false,
        strikethrough = false,
        inverse = false,
	contrast = "hard",
        overrides = {
          NeoTreeDirectoryIcon = { fg = "#83a598" },
          NeoTreeDirectoryName = { fg = "#83a598" },
          Pmenu = { bg = "#1d2021" },
          NormalFloat = { bg = "#1d2021" },
          FloatBorder = { fg = "#fabd2f" },
        },
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    config = function()
      vim.keymap.set('n', '<space>e', ':Neotree filesystem toggle left<CR>')
      require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
      },
    })
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    event = { "VimEnter", "InsertEnter", "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
    opts = function()
      local hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end

      local diagnostics = {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "error", "warn" },
        symbols = { error = " ", warn = " " },
        colored = false,
        always_visible = true,
      }

      local diff = {
        "diff",
        colored = false,
        symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
        cond = hide_in_width,
      }

      local filetype = {
        "filetype",
        icons_enabled = false,
      }

      local location = {
        "location",
        padding = 0,
      }

      local spaces = function()
        return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
      end

      return {
        options = {
          globalstatus = true,
          icons_enabled = true,
          theme = "gruvbox_dark",
          disabled_filetypes = { "alpha", "dashboard", "neo-tree" },
          always_divide_middle = true,
        },

        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", diff, diagnostics },
          lualine_c = { "filename" },
          lualine_x = { filetype },
          lualine_y = { "progress" },
          lualine_z = { location },
        },
      }
    end
  }
}
