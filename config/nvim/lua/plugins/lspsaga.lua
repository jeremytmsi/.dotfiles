return {
  'nvimdev/lspsaga.nvim',
  config = function()
    local map = vim.keymap.set
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = false
      }
    })


    map("n","sb","<Cmd>Lspsaga show_buf_diagnostics<CR>")
    map("n","K","<Cmd>Lspsaga hover_doc<CR>")
  end,
}
