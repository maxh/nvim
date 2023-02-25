local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({ "hrsh7th/cmp-nvim-lsp" })

	use({ "hrsh7th/nvim-cmp" })

	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({
		"L3MON4D3/LuaSnip",
		run = "make install_jsregexp",
	})

	use({ "neovim/nvim-lspconfig" })

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	use({ "rebelot/kanagawa.nvim" })

	use({ "RRethy/vim-illuminate" })

	use({ "tpope/vim-commentary" })

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})

	use({ "windwp/nvim-autopairs" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
