return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  -- enabled = false,
  opts = {
    routes = {
      {
        filter = {
          event = 'notify',
          min_height = 15,
        },
        view = 'popup',
      },
      {
        filter = {
          event = 'msg_show',
          find = 'gravado',
        },
        opts = { skip = true },
      },
      {
        filter = {
          event = 'msg_show',
          find = 'written',
        },
        opts = { skip = true },
      },
    },
    lsp = {
      hover = { enabled = false },
      signature = {
        enabled = false,
      },
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
    },
    presets = {
      bottom_search = false, -- use a classic bottom cmdline for search
      command_palette = false, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
    -- 'rcarriga/nvim-notify',
  },
}
