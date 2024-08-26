vim.g.floaterm_keymap_toggle = '<Leader>t'

return {
  "lervag/vimtex",
	--"SirVer/ultisnips",
  {
    "preservim/nerdtree"
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
  "neovim/nvim-lspconfig",
  {
    "voldikss/vim-floaterm",
    lazy = false
  }
}
