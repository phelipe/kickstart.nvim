-- plugin for fast movimentation between files in nvim
return {
  'ThePrimeagen/harpoon',
  event = { 'BufEnter' },
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    -- if you wnat use it with telescope
    -- vim.keymap.set('n', '<leader>sm', ":Telescope harpoon marks<CR>", { desc = "Harpoon [S]how [M]arks" })
    vim.keymap.set('n', '<leader>m', ":lua require('harpoon.mark').add_file()<CR>", { desc = 'Harpoon add [M]ark' })
    vim.keymap.set('n', '<leader>sm', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = 'Harpoon [S]how [M]arks' })
    vim.keymap.set('n', '<leader>j', ":lua require('harpoon.ui').nav_next()<CR>", { desc = 'Harpoon Next Mark' })
    vim.keymap.set('n', '<leader>k', ":lua require('harpoon.ui').nav_prev()<CR>", { desc = 'Harpoon Previous Mark' })
  end,
}
