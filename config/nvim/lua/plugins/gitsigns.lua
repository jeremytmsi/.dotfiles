return {
  "lewis6991/gitsigns.nvim",
  opts = {
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, {buffer=buffer, desc=desc})
      end

      map("n","gb","<Cmd>Gitsigns blame_line<CR>", "Git blame")
    end
  }
}
