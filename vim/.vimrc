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
"set t_Co=256
"set background=dark
"let base16colorspace=256
"let g:solarized_termcolors=256
"colorscheme solarized
