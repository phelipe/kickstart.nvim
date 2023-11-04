-- Add plugin to esay search TODO comments
return {
  'folke/todo-comments.nvim',
  event = { 'BufEnter' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('todo-comments').setup {}
    vim.keymap.set('n', '<Leader>st', ':TodoTelescope<CR>', { silent = true, desc = '[S]earch [T]odos' })
  end,
}
