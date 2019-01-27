set autoindent
set breakindent
set clipboard^=unnamed,unnamedplus
set cmdwinheight=20
set confirm
" set cursorcolumn
set cursorline
set directory=$HOME/.vim/backup//
set directory=$HOME/.vim/swp//
set expandtab
set encoding=utf-8
set foldlevelstart=99
set foldmethod=manual
set ignorecase
set iskeyword=@,48-57,192-255
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set list
set modeline
set mouse=a
set nowrapscan
set path+=$HOME/**
set relativenumber
set ruler
set shell=zsh
set shiftwidth=4
set shortmess+=aAcIws
set showcmd
set showmatch
set showmode
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=4
set stal=2
set tabline=%!MyTabLine()
set tabstop=4
set textwidth=130
set thesaurus+=$HOME/.vim/thesaurus/thesaurus.txt
set timeoutlen=500
set title
set undodir=$HOME/.vim/undodir//
set viminfo=!,'100,<100,/100,:100,s10,h
set virtualedit=all
set wildmenu
set wildmode=list:longest,full

" Statusline
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

" vim:textwidth=130

