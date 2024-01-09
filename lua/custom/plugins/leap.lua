-- plugin for fast movimentation in nvim
return {
  'ggandor/leap.nvim',
  event = { 'BufEnter' },
  dependencies = 'tpope/vim-repeat',
  config = function()
    -- require('leap').setup {}
    require('leap').create_default_mappings(true)
  end,
}
