set clipboard^=unnamed,unnamedplus
set shell=zsh
set nocompatible
set autoindent
set wildmode=list:longest,full
set wildmenu
set showcmd
set title
set tabline=%!MyTabLine()
set showtabline=2
set modeline
set clipboard^=unnamedplus
set relativenumber
set confirm
set wildmenu
set expandtab
set tabstop=4
set softtabstop=4
set expandtab
set cursorline
set shiftwidth=4
set shortmess+=aAcIws
set incsearch
set ignorecase
set smartcase
set laststatus=2
set directory=$HOME/.vim/swp//
set directory=$HOME/.vim/backup//
set undodir=$HOME/.vim/undodir//
set lazyredraw
set foldlevelstart=99
set foldmethod=manual
set statusline =%#function#>>>
set statusline +=\ %#function#\ %F
set statusline +=\ %#identifier#\::\ %m\ %r\ %h\ %w\ %{strftime('%c')}%=
set statusline +=%#tag#%b
set statusline +=\ \|
set statusline +=%#character#\ %{&ff}
set statusline +=\ \|
set statusline +=%#error#\ %Y
set statusline +=\ \|
set statusline +=%#keyword#\ line:
set statusline +=\ %l/%L
set statusline +=\ \|
set statusline +=%#function#\ column:
set statusline +=\ %c
set statusline +=\ <<<
set mouse=a
set linebreak breakindent
" set list listchars

