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

      lspconfig.docker_compose_language_service.setup {}

      lspconfig.nil_ls.setup {}

    end
  },

  {
    "williamboman/mason.nvim",
    opts = {}
  },

}
