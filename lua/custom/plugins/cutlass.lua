return {
  'gbprod/cutlass.nvim',
  -- event = { 'BufEnter' },
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    cut_key = 'x',
    override_del = nil,
    exclude = {},
    registers = {
      select = '_',
      delete = '_',
      change = '_',
    },
  },
}
