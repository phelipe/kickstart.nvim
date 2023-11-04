-- package for use buffer as "tabs"
return {
  'nvim-tree/nvim-tree.lua',
  event = 'VeryLazy',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    -- disable netrw at the very start of your init.lua (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
    vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { silent = true, desc = 'Open side bar of files' })

    require('nvim-tree').setup {
      view = {
        adaptive_size = true,
      },
    }
  end,
}
