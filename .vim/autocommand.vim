" :autocmd group event pattern nested command
"
"
" augroup CommentOut
    " autocmd!
    " autocmd FileType * <SID>ToggleComment
" augroup END
"augroup CommentOut
"    autocmd! FileType javascript nnoremap <buffer> <C-c> mzI// <esc>`z
"    autocmd! FileType python nnoremap <buffer> <C-c> mzI# <esc>`z
"    autocmd! FileType vim nnoremap <buffer> <C-c> mzI" <esc>`z
"augroup END
"
"augroup RemoveComment
"    autocmd! FileType javascript nnoremap <buffer> ¢ mz0xx`z<esc>
"    autocmd! FileType python nnoremap <buffer>  ¢ mz0xx`z<esc>
"    autocmd! FileType vim nnoremap <buffer>  ¢ mz0xx`z<esc>
"augroup END
"
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
"
" :filetype on
" :autocmd FileType c,cpp :set cindent
" :autocmd BufRead
" :autocmd BufRead *.cpp :set filetype=c
" :autocmd BufRead *.html :set filetype=html
" Any other filetypes, set to text* :setfiletype text

