return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim"
    },
    keys = {
      {";f",function() require("telescope.builtin").find_files({no_ignore = false, hidden = true}) end},
      {"sf",function()
        local telescope = require("telescope")

        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = true,
          initial_mode = "normal"
        })
      end}
    },
    config = function(_, opts)
      local telescope = require("telescope")
      local fb_actions = require("telescope").extensions.file_browser.actions

      opts.defaults = {
        initial_mode = "normal",
        file_ignore_patterns = {".git/"}
      }

      opts.extensions = {
        file_browser = {
          theme = 'dropdown',
          hijack_netrw = true,
          mappings = {
            ["n"] = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir
            }
          }
        }
      }

      telescope.setup(opts)
      require("telescope").load_extension("file_browser")
    end
  }
}
