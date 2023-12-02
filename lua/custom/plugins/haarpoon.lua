-- plugin for fast movimentation between files in nvim
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = { 'BufEnter' },
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    local harpoon = require 'harpoon'
    vim.keymap.set('n', '<leader>n', function()
      harpoon:list():remove()
    end, { desc = 'Harpoon remove [M]ark' })
    vim.keymap.set('n', '<leader>m', function()
      harpoon:list():append()
    end, { desc = 'Harpoon add [M]ark' })
    vim.keymap.set('n', '<leader>sm', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon [S]how [M]arks' })
    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():next()
    end, { desc = 'Harpoon Next Mark' })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon Previous Mark' })
  end,
}
