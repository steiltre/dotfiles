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
  }, 
  -- install without yarn or npm
  --{
  --    "iamcco/markdown-preview.nvim",
  --    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --    ft = { "markdown" },
  --    build = function() vim.fn["mkdp#util#install"]() end,
  --},
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!).
	  build = "make install_jsregexp"
  }
}
