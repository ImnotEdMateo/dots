return {

  -- startup screen

  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    commit = "dafa11a6218c2296df044e00f88d9187222ba6b0",

    config = function ()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
      [[⡏⠉⠉⠉⠉⠉⠉⠋⠉⠉⠉⠉⠉⠉⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⠉⠉⠉⠹]],
      [[⡇⢸⣿⡟⠛⢿⣷⠀⢸⣿⡟⠛⢿⣷⡄⢸⣿⡇⠀⢸⣿⡇⢸⣿⡇⠀⢸⣿⡇⠀]],
      [[⡇⢸⣿⣧⣤⣾⠿⠀⢸⣿⣇⣀⣸⡿⠃⢸⣿⡇⠀⢸⣿⡇⢸⣿⣇⣀⣸⣿⡇⠀]],
      [[⡇⢸⣿⡏⠉⢹⣿⡆⢸⣿⡟⠛⢻⣷⡄⢸⣿⡇⠀⢸⣿⡇⢸⣿⡏⠉⢹⣿⡇⠀]],
      [[⡇⢸⣿⣧⣤⣼⡿⠃⢸⣿⡇⠀⢸⣿⡇⠸⣿⣧⣤⣼⡿⠁⢸⣿⡇⠀⢸⣿⡇⠀]],
      [[⣇⣀⣀⣀⣀⣀⣀⣄⣀⣀⣀⣀⣀⣀⣀⣠⣀⡈⠉⣁⣀⣄⣀⣀⣀⣠⣀⣀⣀⣰]],
      [[⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷]],
      [[⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇]],
      [[⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽]],
      [[⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕]],
      [[⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕]],
      [[⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕]],
      [[⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄]],
      [[⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕]],
      [[⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿]],
      [[⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟]],
      [[⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠]],
      [[⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙]],
      [[⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣]],
      }
      dashboard.section.buttons.val = {
        dashboard.button("n", " new file", ":ene<CR>"),
        dashboard.button("f", " find file", ":Telescope find_files <CR>"),
        dashboard.button("g", "󰱼 find text", ":Telescope live_grep <CR>"),
        dashboard.button("r", " recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("l", "󰒲 lazy", ":Lazy <CR>"),
        dashboard.button("c", " config", ":e ~/.config/nvim/init.lua <CR>"),
        dashboard.button("q", " quit", ":qa<CR>"),
      }
      dashboard.section.buttons.opts = {
        spacing = 0,
        position = "center"
      }

      local function footer()
        return "    人間が繋がれば\n  人生も長くなるので…"
      end

      dashboard.section.footer.val = footer()

      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "Include"
      dashboard.section.buttons.opts.hl = "Keyword"

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end
  },

  -- Terminal inside nvim

  {
    "akinsho/toggleterm.nvim",
    commit = "19aad0f41f47affbba1274f05e3c067e6d718e1e",
    event = "VeryLazy",
    opts = {
      size = 10,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
      },
    },

    config = function (_, opts)
      require("toggleterm").setup(opts)

      function _G.set_terminal_keymaps()
        local Opts = { noremap = true }
        -- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
        vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], Opts)
        vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], Opts)
        vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], Opts)
        vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], Opts)
      end

      vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
      
    end
  },
 
 -- statusline

  {
    "nvim-lualine/lualine.nvim",
    commit = "0050b308552e45f7128f399886c86afefc3eb988",
    event = { "VimEnter", "InsertEnter", "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
    opts = function ()
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
  },    

  -- Icons for nvim-tree

  {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    commit = "0568104bf8d0c3ab16395433fcc5c1638efc25d4",
    opts = {
      override = {
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh",
        },
      },
      color_icons = true,
      default = true,
    }
  },

  -- keybindings visual

  {
    "folke/which-key.nvim",
    commit = "5224c261825263f46f6771f1b644cae33cd06995",
    event = "VeryLazy",

    config = function ()
      require("which-key").setup {}
    end
  },


  -- ui components

  {
    "MunifTanjim/nui.nvim",
    commit = "d146966a423e60699b084eeb28489fe3b6427599",
    event = "VeryLazy"
  },

}  -- {
  --   'rcarriga/nvim-notify',
  --   commit = "ea9c8ce7a37f2238f934e087c255758659948e0f",
  --   event = { 'BufReadPost', 'BufNewFile' },
  --   opts = { background_colour = '#000000' },
  --   config = function(_, opts)
  --     local notify = require('notify')
  --     notify.setup(opts)
  --     vim.notify = notify
  --   end,
  -- },

  -- dressing.nvim
