local function load_config(package)
	return function()
		require("plugins." .. package)
	end
end

local plugins = {
	{
		"stevearc/oil.nvim",
		dependencies = { "echasnovski/mini.icons", opts = {} },
		config = load_config("tools.oil"),
	},
	{
		"altermo/ultimate-autopair.nvim",
		event = { "InsertEnter" },
		branch = "v0.6",
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },

		config = load_config("tools.telescope"),
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		{
			"williamboman/mason.nvim",
			config = load_config("lang.mason"),
		},
		{
			"neovim/nvim-lspconfig",
			dependencies = { "saghen/blink.cmp" },
			config = load_config("lang.lsp"),
		},
	},
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "*",
		config = load_config("lang.blink"),
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = load_config("lang.none-ls"),
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = load_config("lang.treesitter"),
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
}

return { plugins = plugins }
