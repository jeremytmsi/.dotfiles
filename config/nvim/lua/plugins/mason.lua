return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "docker_language_server",
      }
    },
    dependencies = {"neovim/nvim-lspconfig"}
  }
}
