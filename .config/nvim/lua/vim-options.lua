-- Shitty configurations
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set cursorline")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.syntax = 'enable'
vim.g.maplocalleader = ""
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("nnoremap j gj")
vim.cmd("nnoremap k gk")
vim.cmd("nnoremap <Down> gj")
vim.cmd("nnoremap <Down> gj")
vim.cmd("inoremap <Down> <C-o>gj")
vim.cmd("inoremap <Up> <C-o>gk")

-- Spanish (my native language) Spell Checker in Markdown (and their friends) Files
-- For English just uncomment the option commented
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"markdown", "mdx", "astro", "plaintex", "txt", "tex"},
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "es"
        -- vim.opt_local.spelllang = "en"
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"lua", "vim", "typescript", "typescriptreact", "javascript", "javascriptreact"},
    callback = function()
        vim.opt_local.spell = false
    end,
})

