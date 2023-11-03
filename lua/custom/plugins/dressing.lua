return {
  'stevearc/dressing.nvim',
  -- event = "VeryLazy",
  event = { 'BufEnter' },
  opts = {},
  config = function()
    require('dressing').setup {}
  end,
}
