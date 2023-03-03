require("nvim-tree").setup({
	view = { width = 60 },
})

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle filetree" })
vim.keymap.set("n", "<leader>tr", api.tree.reload, { desc = "Refresh tree" })
vim.keymap.set("n", "<leader>tt", function()
	api.tree.toggle(true)
end, { desc = "Find current file in tree" })
vim.keymap.set("n", "<leader>tf", function()
	api.tree.open({ find_file = true })
end, { desc = "Find current file in tree" })
