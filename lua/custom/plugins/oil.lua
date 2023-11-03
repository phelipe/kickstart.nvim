-- package for open directories like buffers and easely open current file directory
return {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
  opts = {},
  config = function()
    vim.keymap.set('n', '-', require('oil').open, { desc = 'Open parent directory' })
    require('oil').setup {}
  end,
}
