:autocmd FileType javascript nnoremap <buffer> <C-c> I//<esc>
:autocmd FileType python nnoremap <buffer> <C-c> I#<esc>

" Save folding
" augroup QuickNotes
"   au BufWrite,VimLeave * mkview
"   au BufRead           * silent loadview
" augroup END
