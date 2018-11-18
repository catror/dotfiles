let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Reload vimr configuration file
nnoremap <leader><leader>r :source ~/.vim/vimrc<CR>

" complete {
    
    inoremap <silent><expr> ( complete_parameter#pre_complete("()")
    inoremap <silent><expr> <CR> pumvisible() ? complete_parameter#pre_complete("") : "\<cr>"
    imap <C-j> <Plug>(complete_parameter#goto_next_parameter)
    imap <C-k> <Plug>(complete_parameter#goto_previous_parameter)
    "imap <c-j> <Plug>(complete_parameter#overload_down)
    "imap <c-k> <Plug>(complete_parameter#overload_up)

    let g:AutoPairs = {'`': '`', '"': '"', '{': '}', '''': '''', '[': ']'}
    inoremap <buffer><silent> ) <C-R>=AutoPairsInsert(')')<CR>
" } complete

" navigate {
    nnoremap <silent> <leader>gd :YcmCompleter GoToDeclaration<CR> "jump to declaration
    nnoremap <silent> <leader>gs :GscopeFind s <C-R><C-W><CR> " find this symbol
	nnoremap <silent> <leader>gg :GscopeFind g <C-R><C-W><CR> " find this definition
	nnoremap <silent> <leader>gc :GscopeFind c <C-R><C-W><CR> " find calling this function
	nnoremap <silent> <leader>gt :GscopeFind t <C-R><C-W><CR> " find this text string
	nnoremap <silent> <leader>ge :GscopeFind e <C-R><C-W><CR> " find this egrep pattern
	nnoremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<CR><CR> " find this file
	nnoremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<CR><CR> " find files #including this file
	nnoremap <silent> <leader>gr :GscopeFind d <C-R><C-W><CR> " find functions called by this function
	nnoremap <silent> <leader>ga :GscopeFind a <C-R><C-W><CR> " find places where this symbol is assigned a value
	nnoremap <silent> <leader>gk :GscopeKill<CR> " close connections to cscope

    nnoremap <silent><A-u> :PreviewScroll -1<CR>
    nnoremap <silent><A-d> :PreviewScroll +1<CR>
    autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<CR>
    autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<CR>

    map <leader><leader>h <Plug>(easymotion-linebackward)
    map <leader><leader>l <Plug>(easymotion-lineforward)
    map <leader><leader>. <Plug>(easymotion-repeat)
    map <leader><Up> <Plug>(easymotion-k)
    map <leader><Down> <Plug>(easymotion-j)
    map <leader><Left> <Plug>(easymotion-linebackward)
    map <leader><Right> <Plug>(easymotion-lineforward)

    map <C-Up> <C-U>
    map <C-Down> <C-D>
    "map <Up> <NOP>
    "map <Down> <NOP>
    "map <Left> <NOP>
    "map <Down> <NOP>
" } navigate

" appearance {
    nmap <silent> <leader>ig <Plug>IndentGuidesToggle
    map <silent> <leader><CR> :nohlsearch<CR>
" } appearance

" explorer {
    nmap <F2> :NERDTreeToggle<CR>
    nmap <leader>e :NERDTreeFind<CR>
    
    nmap <leader>1 :execute 'normal '."\<Plug>AirlineSelectTab".1<CR>
    nmap <leader>2 :execute 'normal '."\<Plug>AirlineSelectTab".2<CR>
    nmap <leader>3 :execute 'normal '."\<Plug>AirlineSelectTab".3<CR>
    nmap <leader>4 :execute 'normal '."\<Plug>AirlineSelectTab".4<CR>
    nmap <leader>5 :execute 'normal '."\<Plug>AirlineSelectTab".5<CR>
    nmap <leader>6 :execute 'normal '."\<Plug>AirlineSelectTab".6<CR>
    nmap <leader>7 :execute 'normal '."\<Plug>AirlineSelectTab".7<CR>
    nmap <leader>8 :execute 'normal '."\<Plug>AirlineSelectTab".8<CR>
    nmap <leader>9 :execute 'normal '."\<Plug>AirlineSelectTab".9<CR>

    nmap <leader>w- <C-W>-<CR>
    nmap <leader>w= <C-W>+<CR>
    nmap <leader>w, <C-W><<CR>
    nmap <leader>w. <C-W>><CR>
" } explorer

" other {
    map <C-S> :w<CR>
    imap <C-S> <ESC>:w<CR>
" } other
