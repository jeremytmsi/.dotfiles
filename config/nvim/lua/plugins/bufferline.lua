return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    {"<Tab>","<Cmd>BufferLineCycleNext<CR>>"},
    {"<S-Tab>","<Cmd>BufferLineCyclePrev<CR>"}
  },
  opts = {
    options = {
      mode = "tabs",
      show_buffer_close_icons = false,
      show_close_icon = false,
      separator_style = "slant"
    }
  }
}
