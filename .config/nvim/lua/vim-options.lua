vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set cursorline")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.syntax = 'enable'
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("nnoremap j gj")
vim.cmd("nnoremap k gk")
vim.cmd("nnoremap <Down> gj")
vim.cmd("nnoremap <Down> gj")
vim.cmd("inoremap <Down> <C-o>gj")
vim.cmd("inoremap <Up> <C-o>gk")
