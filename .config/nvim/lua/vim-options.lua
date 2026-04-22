vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set cursorline")
vim.cmd("set clipboard+=unnamedplus")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.syntax = 'enable'

require("hotkeys")
