return { 
  'fedepujol/move.nvim',
  config = function()
  require('move').setup({
    line = {
      enable = true,  -- Habilita el movimiento de líneas
      indent = true   -- Activa la indentación
    },
    block = {
      enable = true,  -- Habilita el movimiento de bloques
      indent = true   -- Activa la indentación
    },
    word = {
      enable = true,  -- Habilita el movimiento de palabras
    },
    char = {
      enable = false  -- Habilita el movimiento de caracteres
      }
    })

    -- Mapeos para el modo normal
    vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', { noremap = true, silent = true })

    -- Mapeos para el modo visual
    vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', { noremap = true, silent = true })
  end
}
