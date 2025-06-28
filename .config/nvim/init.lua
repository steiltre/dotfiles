local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("plugin_settings")
require("lsp")
vim.lsp.set_log_level("debug")

--require("tokyonight").setup({
	--style="storm"
--})

-- Turn on line numbers
vim.opt.number = true

-- Turn off text-wrapping
vim.opt.wrap = false

-- Set width for hard-wrapping
vim.opt.textwidth = 120

-- Turn tabs into spaces
vim.opt.expandtab = true

-- Set size of tab for manual indenting
vim.opt.tabstop = 2

-- Set size of tab for automatic indenting
vim.opt.shiftwidth = 2

-- Highlight trailing whitespace
--vim.opt.listchars.tab = " "
--vim.opt.listchars.trail = ""

-- Allow backspaces and deletes to remove \n
vim.opt.backspace = {'indent', 'eol', 'start'}

-- Set statusline to always appear
vim.opt.laststatus = 2

vim.opt.statusline = ""
vim.opt.statusline:append("%f")					-- filename
vim.opt.statusline:append(" [%{strlen(&fenc)?&fenc:'none'}")	-- file encoding
vim.opt.statusline:append(" %{&ff}]")				-- file format
vim.opt.statusline:append(" %h%m%r")				-- help, modified, and read-only flags
vim.opt.statusline:append("%=")					-- right align
vim.opt.statusline:append("C:%c")				-- cursor column
vim.opt.statusline:append(" L:%l/%L (%p%%)")			-- cursor line / total lines (percentage)

-- UTF encoding
vim.opt.statusline.encoding = 'utf-8'

-- Autoload files that have been changed outside of Neovim
vim.opt.autoread = true

-- Use system clipboard
vim.opt.clipboard:append("unnamed")

-- Create splits to the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Highlight line cursor is on
vim.opt.cursorline = true

-- Syntax highlighting
vim.opt.syntax = 'on'

-- Turn off vi compatibility
vim.opt.compatible = false

-- No backup files
vim.opt.backup = false

-- No swap files
vim.opt.swapfile = false

-- Incremental search
vim.opt.incsearch = true

-- Highlight search matches
vim.opt.hlsearch = true

-- Hide buffers that are not in visible windows to give warnings when exiting without saving
vim.opt.hidden = true

-- Identify .tex documents properly
vim.g.tex_flavor = 'latex'

-- Keybindings
vim.api.nvim_set_keymap('i', '<C-j>', '<esc>/<++><CR>cf>', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<esc>/<++><CR>cf>', {})

require('keybindings')
if vim.fn.filereadable(vim.fn.expand('~/.config/nvim/lua/local_init.lua')) == 1 then
  require('local_init')
end

require('custom.snippets')
