-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local function map(op, lhs, rhs, opts)
  opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
  vim.keymap.set(op, lhs, rhs, opts)
end

local Util = require("lazyvim.util")
-- local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ==================== Editor ==================== --

-- Saving and quiting
-- map("n", "<leader>w", "<cmd>w<cr>", opts)
-- map("n", "<leader>q", "<cmd>q<cr>", opts)

-- Split window
map("n", "ss", ":split<CR>")
map("n", "sv", ":vsplit<CR>")

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>-")
map("n", "<C-w><down>", "<C-w>+")

-- ==================== Coding ==================== --

-- Move lines up and down when in Visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z") -- Keep cursor in place when joining lines
map("x", "p", '"_dP') -- Keep copied text in buffer when pasting over text

-- Keep cursor in middle of page when jumping up and down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Keep search terms in middle of page
map("n", "n", "nzzzv")
map("n", "N", "nzzzv")

-- Quick way to copy stuff to the clipboard
map("n", "<leader>y", '"+y', { desc = "Copy to clipboard" })
map("v", "<leader>y", '"+y', { desc = "Copy to clipboard" })

-- Actually saves changes when working in vertical mode
map("i", "<C-c>", "<Esc>")

-- map({ "n", "v" }, "<leader>f", function()
--   Util.format({ force = true })
-- end, { desc = "Format" })

map("v", "<leader>fl", vim.lsp.buf.format, opts)

-- ==================== Telescope ==================== --

map("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
map("n", "<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch Open [B]uffers" })
map("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

map("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
map("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
map("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
map("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
map("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
map("n", "<leader>sG", ":LiveGrepGitRoot<cr>", { desc = "[S]earch by [G]rep on Git Root" })
map("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
map("n", "<leader>sr", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
