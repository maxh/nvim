require("plugins")

local set = vim.opt
set.background = "dark"
set.colorcolumn = "80"
set.expandtab = true -- Use spaces instead of tabs
set.number = true -- Line numbers
set.shiftwidth = 2 -- Size of an indent
set.softtabstop = 2
set.tabstop = 2 -- Number of spaces tabs count for

vim.cmd([[colorscheme kanagawa]])

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, remap = false })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, remap = false })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, remap = false })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, remap = false })

require("mason").setup()
require("mason-lspconfig").setup()
require("nvim-autopairs").setup()

require("configs/lsp")
require("configs/null-ls")
require("configs/nvim-treesitter")
require("configs/nvim-cmp")
require("configs/nvim-tree")
require("configs/telescope")

-- TODO
-- https://github.com/joe-re/sql-language-server
-- Autocomplete class name based on file name
-- Autoimport while typing so no need to run code action
-- Avoid duplicate code actions in TS import prompt
-- Proper indentation for new lines in TypeScript
-- ESLint running in the background
-- Indentation in JS doesn't use tabs
-- Import full paths
-- Search for hidden files in telescope
