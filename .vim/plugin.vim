" Plugins list and configure

" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py  --clang-completer --go-completer --rust-completer --clang-tidy' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plug 'SirVer/ultisnips'
Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'jiangmiao/auto-pairs'

" appearance
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'octol/vim-cpp-enhanced-highlight'

" explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" navigate
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
Plug 'easymotion/vim-easymotion'

Plug 'lilydjwg/fcitx.vim'
Plug 'tpope/vim-unimpaired'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

call plug#end()

" complete {
    let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
    "let g:ycm_show_diagnostics_ui = 0
    "let g:ycm_server_log_level = 'info'
    
    let g:ycm_min_num_identifier_candidate_chars = 2

    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 1

    set completeopt=longest,menu,menuone
    "let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_collect_identifiers_from_tags_files = 1

    let g:ycm_cache_omnifunc = 0 "do not cache
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_enable_diagnostic_signs = 0 
    let g:ycm_enable_diagnostic_highlighting = 1

    highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
    highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

    let g:ycm_semantic_triggers =  {
                \ 'c,cpp,go,rust,python': ['re!\w{2}'],
                \ }

    let g:ycm_filetype_whitelist = { 
                \ "c":1,
                \ "cpp":1, 
                \ "go":1,
                \ "rust":1,
                \ "python":1,
                \ "sh":1,
                \ "zsh":1,
                \ "bash":1,
                \ }
" } complete

" appearance {
    set bg=dark
    colorscheme gruvbox

    set laststatus=2
    let g:airline_theme = 'powerlineish'
    let g:airline_powerline_fonts = 1 " install fonts from https://github.com/powerline/fonts
    let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#' " show absolute file path

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
    let g:airline#extensions#tabline#show_tab_nr = 1
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline#extensions#tabline#buffer_nr_show = 0
    let g:airline#extensions#tabline#fnametruncate = 16
    let g:airline#extensions#tabline#fnamecollapse = 2
    let g:airline#extensions#tabline#buffer_idx_mode = 1

    let g:airline#extensions#tagbar#enabled = 1

    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1

    let g:cpp_class_scope_highlight = 1
    let g:cpp_member_variable_highlight = 1
    let g:cpp_class_decl_highlight = 1
    let g:cpp_concepts_highlight = 1
" } appearance

" explorer {
    autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    let NERDTreeWinSize = 22
    let NERDTreeWinPos = "left"
    let NERDTreeShowHidden = 1
    let NERDTreeMinimalUI = 1
    let NERDTreeAutoDeleteBuffer = 1

    let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" } explorer

" navigate {
    let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
    let g:gutentags_modules = ['gtags_cscope']
    let g:gutentags_cache_dir = expand('~/.cache/tags')
    let g:gutentags_auto_add_gtags_cscope = 0
    let g:gutentags_plus_nomap = 1
" } navigate