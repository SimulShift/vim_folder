"==== OPTIONS =========
filetype plugin indent on
set nu
set shiftwidth=4
set softtabstop=4
set tabstop=4
set clipboard=unnamed
set hidden
set noexpandtab
set backspace=indent,eol,start
set completeopt=menuone,noinsert,noselect,popuphidden
set autoread
set tgc
set scrolloff=5
set wildmode=longest,list,full
" smart search
set ignorecase
set smartcase

"==== Initialization ============
"stop autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"change cursor with modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"==== PRETTIER =================
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#print_width = '70'
nmap <Leader>fix <Plug>(Prettier)
