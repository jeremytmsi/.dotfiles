vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
  pattern={"*.docker-compose"},
  callback = function()
    vim.opt.filetype = "yaml.docker-compose"
  end
})
