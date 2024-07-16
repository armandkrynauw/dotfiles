-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

opt.mouse = "" -- Disable mouse
opt.clipboard = "" -- Don't sync with system clipboard

vim.filetype.add({
  extension = {
    tmux = "bash",
  },
})
