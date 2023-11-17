-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
return {
  servers = {
    -- clangd = {},
    gopls = {},
    vtsls = {}, -- linter para typescript e javascript mais rápido que o tsserver
    marksman = {}, -- linter para mrkdown, facilita na escrita
    -- pyright = {},
    -- rust_analyzer = {},
    lua_ls = {
      Lua = {
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          checkThirdParty = false,
          library = {
            [vim.fn.expand '$VIMRUNTIME/lua'] = true,
            [vim.fn.stdpath 'config' .. '/lua'] = true,
          },
        },
        telemetry = { enable = false },
      },
    },
  },
  linters_formatters = {
    'prettierd', --prettier formatter but faster
    'stylua', --lua formatter
    'eslint_d', --eslint linter but faster
  },
}
