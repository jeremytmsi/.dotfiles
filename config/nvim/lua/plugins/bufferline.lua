local map = vim.keymap.set

map("n","<Tab>","<Cmd>BufferLineCycleNext<CR>")
map("n","<S-Tab>","<Cmd>BufferLineCyclePrev<CR>")

return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      mode = "tabs",
      show_close_icon = false,
      show_buffer_close_icons = false,
      separator_style = "slant"
    }
  }
}
