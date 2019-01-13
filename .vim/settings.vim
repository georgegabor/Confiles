
set clipboard^=unnamed,unnamedplus
set shell=zsh
set nocompatible                    " Use Vim settings, rather then Vi settings. It’s important to have this on
set autoindent
set wildmode=list:longest,full      " Command line completion.
set wildmenu
set showcmd                         " Show keystrokes
set title
set tabline=%!MyTabLine()           " Using Tabline function
set showtabline=2                   " Showing tabline always. 0 means never.
set modeline                        " enable vim modelines
set clipboard^=unnamedplus          " system clipboard (requires +clipboard)
set relativenumber
set confirm                         " ask confirmation for some things, like save before quit, etc.
set wildmenu                        " Tab completion menu when using command mode
set expandtab                       " Tab key inserts spaces not tabs
set tabstop=4                       " number of visual spaces per TAB
set softtabstop=4                   " spaces to enter for each tab
set expandtab                       " tabs are spaces
set cursorline                      " highlight current line
set shiftwidth=4                    " amount of spaces for indentation
set shortmess+=aAcIws               " Hide or shorten certain messages
set incsearch
set ignorecase                      " Ignore case sensitivity
set smartcase
set laststatus=2                    " Always show statusline. 0 means never
set directory=$HOME/.vim/swp//      " Directory for swap files
set directory=$HOME/.vim/backup//   " Directory for backup files
set undodir=$HOME/.vim/undodir//    " Directory for undodir files
set lazyredraw                      " redraw only when we need to.
set foldlevelstart=99               " open most folds by default
set foldmethod=manual               " fold based on... 
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
set list listchars

