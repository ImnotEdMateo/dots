
-- ez navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- hotkeys to know wtf is goin' on
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set("n", "nk", vim.diagnostic.open_float)
vim.keymap.set({ 'n' }, '<space>ca', vim.lsp.buf.code_action, {})

-- telescope hotkeys 
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<space>f', builtin.live_grep, {})

