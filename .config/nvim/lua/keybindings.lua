vim.api.nvim_set_keymap('n', '<C-N>', ':NERDTreeToggle<CR>', {})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- render-markdown
vim.keymap.set('n', '<leader>rm', ':RenderMarkdown buf_toggle<CR>', {})

-- Markdown Preview
vim.keymap.set('n', '<leader>mp', '<Plug>MarkdownPreviewToggle', {})

local ls = require("luasnip")

-- LuaSnip
--vim.keymap.set({"i"}, "<C-H>", function() ls.expand() end, {silent = true})
--vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump( 1) end, {silent = true})
--vim.keymap.set({"i", "s"}, "<C-K>", function() ls.jump(-1) end, {silent = true})
--
--vim.keymap.set({"i", "s"}, "<C-E>", function()
--	if ls.choice_active() then
--		ls.change_choice(1)
--	end
--end, {silent = true})
