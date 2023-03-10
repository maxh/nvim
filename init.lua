require("plugins")

local set = vim.opt
set.background = "dark"
set.colorcolumn = "80"
set.expandtab = true -- Use spaces instead of tabs
set.number = true -- Line numbers
set.shiftwidth = 2 -- Size of an indent
set.relativenumber = true
set.softtabstop = 2
set.tabstop = 2 -- Number of spaces tabs count for

vim.cmd([[colorscheme kanagawa]])

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, remap = false })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, remap = false })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, remap = false })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, remap = false })

-- delete and paste without changing register content
vim.keymap.set("v", "<leader>p", '"_dP')
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>d", '"_d')

-- copy current file name to system clipboard
vim.keymap.set("n", "<leader>mf", ":let @+=expand('%:p')<CR>", { silent = true })

require("mason").setup()
require("mason-lspconfig").setup()
require("nvim-autopairs").setup()

require("configs/lsp")
require("configs/null-ls")
require("configs/nvim-treesitter")
require("configs/nvim-cmp")
require("configs/nvim-tree")
require("configs/telescope")

-- TO CONFIG
-- https://github.com/nvim-telescope/telescope-smart-history.nvim
-- https://github.com/joe-re/sql-language-server
-- Autocomplete class name based on file name
-- Autoimport while typing so no need to run code action
-- ESLint running in the background
-- Search for hidden files in telescope
-- Fix asterisks on ESLint docs
-- Git blame for a given line

-- TO LEARN
-- Search within directory (from the tree on the left?)

-- TO INSTALL FRESH
-- LSPs
-- tserver on system
