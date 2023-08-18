return {
  "lervag/vimtex",
	--"SirVer/ultisnips",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		--opts = {style = "day"},
		--config = function()
			--vim.cmd([[colorscheme tokyonight]])
		--end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
  "neovim/nvim-lspconfig"
}
