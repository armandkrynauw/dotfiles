return {
  -- noice
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  -- bufferline (tabs)
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  -- neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        -- position = "right",
      },
    },
  },

  -- notifications
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
    enabled = false,
    enabled = false,
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {},
      },
    },
  },
}
