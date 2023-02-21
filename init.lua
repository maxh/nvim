require("plugins")

local set = vim.opt
set.tabstop = 2
set.softtabstop = 2

set.number = true

set.background = "dark"
vim.cmd([[colorscheme kanagawa]])

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

require("mason").setup()
require("mason-lspconfig").setup()

require("configs/lsp")
require("configs/null-ls")
require("configs/nvim-treesitter")
require("configs/nvim-cmp")
require("configs/nvim-tree")
require("configs/telescope")

-- TODO
-- https://github.com/joe-re/sql-language-server
