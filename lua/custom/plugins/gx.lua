-- plugin for open browser links with gx
return {
  'chrishrb/gx.nvim',
  event = { 'BufEnter' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = true, -- default settings
}
