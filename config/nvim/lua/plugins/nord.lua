return {
  "gbprod/nord.nvim",
  lazy = false,
  config = function()
    require("nord").setup({
      transparent = true
    })
    vim.cmd.colorscheme("nord")
  end
}
