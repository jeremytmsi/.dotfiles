vim.lsp.config('lua_ls', {
  on_init = function(client)

  end,
  settings = {
    Lua = {}
  }
})

vim.lsp.enable("lua_ls")
