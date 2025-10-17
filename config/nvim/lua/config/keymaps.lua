local map = vim.keymap.set
local opts = {noremap = true, silent = true}

map("n","x",'"_x')

map("n","dw",'vb"_d')

map("n","te",":tabedit<Return>", opts)
