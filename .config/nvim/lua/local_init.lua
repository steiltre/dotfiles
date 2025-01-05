vim.cmd [[colorscheme tokyonight-night]]

vim.g.clang_format_path = '/usr/bin/clang-format'
vim.api.nvim_set_keymap('', '<C-K>', ':py3f /usr/share/clang/clang-format-14/clang-format.py<cr>', {})
vim.api.nvim_set_keymap('i', '<C-K><C-o>', ':py3f /usr/share/clang/clang-format-14/clang-format.py<cr>', {})
vim.cmd([[
function Formatonsave()
  let l:lines="all"
  py3f /usr/share/clang/clang-format-14/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cpp,*.hpp,*.ipp call Formatonsave()
]])
