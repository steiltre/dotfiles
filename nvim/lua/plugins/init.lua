return {
  "lervag/vimtex",
	--"SirVer/ultisnips",
  {
    "preservim/nerdtree"
  },
  {
    "airblade/vim-gitgutter"
  },
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
