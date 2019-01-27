"--------------------------------------------------- Leader mapping

let g:mapleader = "\\"

"--------------------------------------------------- Alt keymappings

" '\e' represents the <esc> key: execute set <M-w>=\ew
" or do the for loop with range for a-z

for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor

nnoremap <silent> <M-w> :w<CR>
nnoremap <silent> <M-q> :q<CR>
nnoremap <M-a> :
nnoremap <M-l> :source $MYVIMRC<CR>
nnoremap <M-b> :ls<CR>
nnoremap <M-g> :reg<CR>
nnoremap <M-p> :set paste!<CR>
nnoremap <silent> <M-h> :set hlsearch!<CR>

"-------------------------------------------------- Leader keymappings

nnoremap <silent> <Leader>nn :set number!<CR>
nnoremap <silent> <Leader>rn :set relativenumber!<CR>
nnoremap <Leader>ws :mks! vimconfsession.vim<CR>
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>sp :set spell!<CR>
nnoremap <silent> <Leader>a :ab<CR>
nnoremap <silent> <Leader>m :marks<CR>
nnoremap <silent> <Leader>qa :qa<CR>
nnoremap <Leader>hl :highlight Visual cterm=bold ctermfg=237 ctermbg=32 gui=bold guifg=#2c3135 guibg=#6699CC<CR>

"-------------------------------------------------- Brackets, parantheses, quotes, singlequotes

" Puts 2 signs instead of one
noremap!  '  ''<left>
noremap!  "  ""<left>
noremap!  (  ()<left>
noremap!  {  {}<left>
noremap!  [  []<left>
noremap!  <  <><left>

" Puts either signs around a WORD
nnoremap  p'  Bi'<Esc>Ea'<Esc>
nnoremap  p"  Bi"<Esc>Ea"<Esc>
nnoremap  p(  Bi(<Esc>Ea)<Esc>
nnoremap  p{  Bi{<Esc>Ea}<Esc>
nnoremap  p[  Bi[<Esc>Ea]<Esc>
nnoremap  p<  Bi<<Esc>Ea><Esc>

" Replaces either signs around a WORD
nnoremap  r'  Br'<Esc>Er'<Esc>
nnoremap  r"  Br"<Esc>Er"<Esc>
nnoremap  r(  Br(<Esc>Er)<Esc>
nnoremap  r{  Br{<Esc>Er}<Esc>
nnoremap  r[  Br[<Esc>Er]<Esc>
nnoremap  r<  Br<<Esc>Er><Esc>

" Puts either signs around a Visual selected area
vnoremap  p'  <Esc>`>a'<Esc>`<i'<Esc>
vnoremap  p"  <Esc>`>a"<Esc>`<i"<Esc>
vnoremap  p(  <Esc>`>a)<Esc>`<i(<Esc>
vnoremap  p{  <Esc>`>a}<Esc>`<i{<Esc>
vnoremap  p[  <Esc>`>a]<Esc>`<i[<Esc>
vnoremap  p<  <Esc>`>a><Esc>`<i<<Esc>

" Replaces either signs around a Visual selected area
vnoremap  r'  <Esc>`>r'<Esc>`<r'<Esc>
vnoremap  r"  <Esc>`>r"<Esc>`<r"<Esc>
vnoremap  r(  <Esc>`>r)<Esc>`<r(<Esc>
vnoremap  r{  <Esc>`>r}<Esc>`<r{<Esc>
vnoremap  r[  <Esc>`>r]<Esc>`<r[<Esc>
vnoremap  r<  <Esc>`>r><Esc>`<r<<Esc>

"-------------------------------------------------- Alt-gr keymappings
"Puts a semicolon, a colon or a dot at the end of the line(s)

" <Altgr-;>
vnoremap ´ :normal! mqA;<esc>`q
nnoremap ´ :normal! mqA;<esc>`q
" <Altgr-.>
vnoremap · :normal! mqA.<esc>`q
nnoremap · :normal! mqA.<esc>`q
" <Altgr-2>
vnoremap ² :normal! mqA:<esc>`q
nnoremap ² :normal! mqA:<esc>`q

" <Altgr-u> Uppercasing the word behind the cursor
noremap ↓ gUB
noremap! ↓ <esc>mzgUB`za

"-------------------------------------------------- Tab control

nnoremap <silent> <C-h> :tabmove -1<CR>
nnoremap <silent> <C-l> :tabmove +1<CR>
nnoremap <silent> <m-n> :tabnew<CR>
nnoremap <silent> ł :tabnext<CR>
nnoremap <silent> <m-f> :tabfirst<CR>
nnoremap <silent> ĸ :tabprevious<CR>

"-------------------------------------------------- Other custom keymappings

" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Put a newline
nnoremap pl :<C-U>exe "normal mz" . v:count1 . "o<C-V><Esc>`z"<CR>

" Backspace as X
nnoremap <BS> X

" Move lines
nnoremap <S-Up> :.mo-2<Cr>
nnoremap <S-Down> :.mo+1<Cr>
vnoremap <S-Up> :mo '<-2<Cr>
vnoremap <S-Down> :mo '>+1<Cr>

" Yank visual selected area into x register
vnoremap <F5> "xy

" Paste x register
nnoremap <F5> "xp
nnoremap <F6> "xP

nnoremap <silent> H ^
nnoremap <silent> L $

"-------------------------------------------------------------------------------------------------------------------------------------------
"-------------------------------------------------- Default keymaps, nothing to do with me ----------

" j = gj :: k = gk  while preserving numbered jumps eg. 12j
nnoremap <buffer><silent><expr>j v:count ? 'j' : 'gj'
nnoremap <buffer><silent><expr>k v:count ? 'k' : 'gk'
nnoremap <silent> <Leader>tt :terminal<CR>
" open a terminal in $PWD
" alt defaults
inoremap <silent><C-v> <Esc>:set paste<CR>a<C-r>+<Esc>:set nopaste<CR>a
" nnoremap 0 ^
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

