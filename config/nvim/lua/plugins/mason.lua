return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls"
      }
    },
    dependencies = {"neovim/nvim-lspconfig"}
  }
}
