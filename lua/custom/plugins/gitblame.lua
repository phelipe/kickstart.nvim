-- vim.g.gitblame_enabled = 0
return {
  'f-person/git-blame.nvim',
  event = { 'BufReadPre' },
  config = function()
    require('gitblame').setup {
      enabled = false,
    }
  end,
}
