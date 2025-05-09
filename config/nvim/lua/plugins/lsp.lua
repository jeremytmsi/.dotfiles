return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      diagnostics = {
        virtual_text = {
          spacing = 4,
          source = "if_many"
        },
        severity_sort = true,
      },
    },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false
            }
          }
        }
      }
    end
  },

  {
    "williamboman/mason.nvim",
    opts = {}
  },

}
