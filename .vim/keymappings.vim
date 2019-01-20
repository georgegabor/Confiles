" ------ leader mapping ------

let g:mapleader = "\<Space>"

" ------ enable additional features ------

" Map the alt key,'\e' represents the <esc> key execute "set <M-w>=\ew"
" or do the for loop with range for a-z

for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor

noremap <M-w> :w<CR>
noremap <M-q> :q<CR>
noremap <M-a> :
map! <M-s> <Esc>

" ------ basic maps ------

inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
cnoremap ' ''<left>
cnoremap " ""<left>
cnoremap ( ()<left>
cnoremap { {}<left>
cnoremap [ []<left>

" Puts a ;, ., or : to the end of the line(s)
" Altgr-;
vnoremap ´ :normal! mqA;<esc>`q
nnoremap ´ :normal! mqA;<esc>`q
" Altgr-.
vnoremap · :normal! mqA.<esc>`q
nnoremap · :normal! mqA.<esc>`q
" Altgr-2
vnoremap ² :normal! mqA:<esc>`q
nnoremap ² :normal! mqA:<esc>`q
" toggle line numbers, nn (no number)
nnoremap  <Leader>nn :set number!<CR>
nnoremap  <Leader>rn :set relativenumber!<CR>
" tab control
nnoremap <silent> <C-h> :tabmove -1<CR>
nnoremap <silent> <C-l> :tabmove +1<CR>
nnoremap <silent> <Leader>n :tabnew<CR>
nnoremap <silent> <C-k> :tabnext<CR>
nnoremap <silent> <C-f> :tabfirst<CR>
nnoremap <silent> <C-j> :tabprevious<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>ws :mks! vimconfsession.vim<CR>
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>h :set hlsearch!<CR>
nnoremap <Leader>sp :set spell!<CR>
nnoremap <Leader>a :ab<CR>
nnoremap <Leader>b :ls<CR>
nnoremap <Leader>m :marks<CR>
nnoremap <Leader>r :reg<CR>
nnoremap <Leader>l :source $MYVIMRC<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>qa :qa<CR>
nnoremap <silent> H ^
nnoremap <silent> L $
" Uppercase previous word Altgr-u
inoremap ↓ <esc>mzgUiw`za
" Toggle paste
nnoremap <Leader>p :set paste!<CR>
" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" ---------- Default keymaps, nothing to do with me ----------

" j = gj :: k = gk  while preserving numbered jumps eg. 12j
nnoremap <buffer><silent><expr>j v:count ? 'j' : 'gj'
nnoremap <buffer><silent><expr>k v:count ? 'k' : 'gk'
" open a terminal in $PWD
nnoremap <silent> <Leader>tt :terminal<CR>
" alt defaults
inoremap <silent><C-v> <Esc>:set paste<CR>a<C-r>+<Esc>:set nopaste<CR>a
nnoremap 0 ^
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
" nnoremap <Tab> ==j
nnoremap <Tab> ==
" re-visual text after changing indent
vnoremap > >gv
vnoremap < <gv

" open a new tab in the current directory with netrw
nnoremap <silent> <Leader>o :tabedit <C-R>=expand("%:p:h")<CR><CR>
" split the window vertically and horizontally
" nnoremap _ <C-W>s<C-W><Down>
" nnoremap <Bar> <C-W>v<C-W><Right>
" strip trailing whitespace, ss (strip space)
nnoremap <silent> <Leader>ss
    \ :let b:_p = getpos(".") <Bar>
    \  let b:_s = (@/ != '') ? @/ : '' <Bar>
    \  %s/\s\+$//e <Bar>
    \  let @/ = b:_s <Bar>
    \  nohlsearch <Bar>
    \  unlet b:_s <Bar>
    \  call setpos('.', b:_p) <Bar>
    \  unlet b:_p <CR>

" open ranger as a file chooser using the function below
" noremap <leader>r :call <SID>ranger()<CR>

" match string to switch buffer
" nnoremap <Leader>b :let b:buf = input('Match: ')<Bar>call <SID>bufferselect(b:buf)<CR>

" paste while in insert mode
" change windows with ctrl+(hjkl)
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" close current buffer and/or tab
" nnoremap <silent> <Leader>q :B<CR>:silent tabclose<CR>gT
" nnoremap <silent> <Leader>tl :execute "tabn ".g:lasttab<CR>

