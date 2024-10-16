vim.g.floaterm_keymap_toggle = '<Leader>t'

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
  "neovim/nvim-lspconfig",
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "voldikss/vim-floaterm",
    lazy = false
  },
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    opts = {
    },
  },
  -- install with yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  }
}
