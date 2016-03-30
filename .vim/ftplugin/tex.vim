" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

" add text wrapping
set tw=150 " For hard wrapping, newline characters are entered
" set wrap linebreak nolist " For soft wrapping, text is not reformatted
"
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" set to compile to pdf by default
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'
