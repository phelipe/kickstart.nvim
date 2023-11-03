-- package for use buffer as "tabs"
return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.keymap.set('n', '<Leader>l', ':BufferLineCycleNext<CR>', { silent = true, desc = 'Go to the next buffer' })
    vim.keymap.set('n', '<Leader>h', ':BufferLineCyclePrev<CR>', { silent = true, desc = 'Go to the  previous buffer' })
    vim.keymap.set('n', '<C-q>', ':bd<CR>', { silent = true, desc = 'Close current buffer' })
    vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true, desc = 'Save current buffer' })
    vim.opt.termguicolors = true
    require('bufferline').setup {}
  end,
}
