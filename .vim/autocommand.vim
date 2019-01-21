:autocmd FileType javascript nnoremap <buffer> <C-c> I//<esc>
:autocmd FileType python nnoremap <buffer> <C-c> I#<esc>

" Save folding
" augroup QuickNotes
"   au BufWrite,VimLeave * mkview
"   au BufRead           * silent loadview
" augroup END
"
" autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
" Now, every time you open a new file Vim checks ~/.vim/skel/ for a file
" whose name starts with tmpl. and ends with the extension of the file you're
" creating. It then reads the template file into your new file's buffer.
" For example, if you added the template above then invoked Vim with vim
" page.html, the XHTML above would be inserted into the page.html file
" automatically.

