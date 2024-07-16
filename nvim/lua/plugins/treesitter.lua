return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local parsers = require("nvim-treesitter.parsers")

      local parser_config = parsers.get_parser_configs()
      parser_config.tmux.filetype_to_parsername = "bash"

      return {
        ensure_installed = {
          "cmake",
          "cpp",
          "css",
          "gitignore",
          "http",
          "java",
          "php",
          "rust",
          "scss",
          "sql",
          "svelte",
        },
      }
    end,
  },
}
