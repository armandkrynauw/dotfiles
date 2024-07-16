local actions = require("telescope.actions")

return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
        file_ignore_patterns = {
          "node_modules",
        },
      },
    },
  },

  {
    "folke/flash.nvim",
    enabled = false,
  },

  { "shortcuts/no-neck-pain.nvim" },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_formatter = "<author>, <author_time:%R> • <summary>",
      current_line_blame_opts = {
        delay = 200,
      },
    },
  },
}
