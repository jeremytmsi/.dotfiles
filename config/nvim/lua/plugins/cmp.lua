return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim"
  },

  opts = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")

    return {
      mapping = cmp.mapping.preset.insert({
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({select = true})
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end
      },
      sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'luasnip'}
      }, {
        {name = 'buffer'}
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text"
        })
      }
    } 
  end
}
