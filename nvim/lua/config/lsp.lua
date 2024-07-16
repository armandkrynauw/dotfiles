return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.insure_installed, {
        -- Language Server Protocols
        "typescript-language-server", -- LSP for Typescript and Javascript
        "haskell-language-server", -- LSP for Haskell
        "tailwindcss-language-server", -- LSP for Tailwind CSS
        "css-lsp", -- LSP for CSS, SCSS & LESS

        -- Formatters
        "stylua", -- An opinionated Lua code formatter
        "selene", -- A blazing-fast modern Lua linter written in Rust
        "shfmt", -- A shell formatter (sh/bash/mksh)
      })
    end,
  },
}
