" Basic vim configure

" compile configure options
" ./configure --with-features=huge --with-compiledby="$(whoami)" --enable-multibyte --disable-gui --enable-pythoninterp --enable-python3interp --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr

set title
set ttyfast " Improves smoothness of redrawing

" Don't redraw while executing macros (good performance config)
set lazyredraw

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

set t_Co=256 " using 256 colors
set t_ti= t_te= " put terminal in 'termcap' mode

" Make backspace fell free
set backspace=eol,start,indent

" Enable clipboard if possible
if has('clipboard')
    if has('unnamedplus') " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set fileencoding=utf-8
set encoding=utf-8
set fencs=utf-8,gbk,gb2312,gb18030
set termencoding=utf-8
set fileformats=unix,mac,dos

set ambiwidth=double
set formatoptions+=mM
set formatoptions+=B

set autoindent " Auto indent
set smartindent " Smart indent

filetype on
filetype plugin on
filetype plugin indent on

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" set iskeyword+=-
set whichwrap+=<,>,h,l,[,]

" clear split fillchar
set fillchars=vert:\ 

" Use these symbols for invisible chars
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:»,precedes:«

set foldlevel=100 " unfold all by default

" Enable syntax highlighting
syntax enable
syntax on


set shortmess=aoOtTI " Abbrev. of messages

" should disable cursor blink of terminal
set cursorcolumn
set cursorline

" Show linenumber by default
set number
"set relativenumber


" Turn spell check off
set nospell

set cmdheight=2
set showcmd
set wildmode=list:longest,full

" Record cursor postion
set viewoptions=cursor
au BufWinLeave ?* mkview
au VimEnter ?* silent loadview

au FileType c,cpp,go,rust,python set textwidth=120
au FileType c,cpp,go,rust,python set colorcolumn=121

au FileType text,markdown,html,xml set wrap
set linebreak
set breakindent

set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault