vim.lsp.config('lua_ls', {
  on_init = function(client)
    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      workspace = {
        checkThirdParty = false,
        library = {
          vim.api.nvim_get_runtime_file('', true)
        },
        diagnostics = {
          globals = {"vim"}
        }
      },
      telemetry = {
        enable = false
      }
    })
  end,
  settings = {
    Lua = {}
  }
})

vim.lsp.enable("lua_ls")
