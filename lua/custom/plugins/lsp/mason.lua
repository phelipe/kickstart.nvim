return {
  'williamboman/mason.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local servers = require('custom.config.lists').servers
    local mason = require 'mason' -- enable mason and configure icons
    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }
    -- Ensure the servers above are installed
    local mason_lspconfig = require 'mason-lspconfig'

    mason_lspconfig.setup {
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = true,
    }
    -- Ensure linters and formatters are installed
    local mason_tool_installer = require 'mason-tool-installer'
    local linters_formatters = require('custom.config.lists').linters_formatters
    mason_tool_installer.setup {
      ensure_installed = linters_formatters,
    }
  end,
}
