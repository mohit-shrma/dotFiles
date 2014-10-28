call pathogen#infect()
call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on

" set tabstop
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set foldmethod=syntax

"show currentmode
set showmode

"allow cursor to go to invalid places
"set virtualedit=all

"set textwidth to 80 chars
set textwidth=80

"Enable search highlight
set hlsearch

"incrementally match search
set incsearch

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.jar,*.html,*/target/*
syntax enable
colorscheme wombat256

let g:tagbar_left = 1
let g:tagbar_zoomwidth = 0
let g:tagbar_autofocus = 1
set ruler

"Exceed 80 columnwidth
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

