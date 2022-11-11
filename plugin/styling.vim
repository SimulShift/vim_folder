"======================================
" H = I = L = I = G = H = T = I = N = G
"======================================
syntax on

" Colorschemes
" srcery
silent! colorscheme srcery
" gruvbox dark and light modes background modes
"autocmd vimenter * colorscheme gruvbox
"set background=dark

"Vertical Indent Lines
highlight SpecialKey guifg=#444444

" Comments
hi Comment guifg=#30EEBB

" Custom popup colors
highlight Pmenu guifg=orange guibg=#333333
highlight PmenuSel guibg=pink guifg=black

" grab the higlight group under cursor
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

nnoremap <leader>hg :call SynGroup()<cr>

"gutter styling
":highlight SignColumn ctermbg=black
set numberwidth=4
highlight clear SignColumn

"================================
"        Vertical Lines
"================================
"==== Spaces ================
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 139
" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202

"=======================
"       Folding 
"=======================
set foldcolumn=1
hi Folded ctermfg=102 guifg=white guibg=#381E53 ctermbg=black

"augroup remember_folds
"  autocmd!
"  autocmd BufWinLeave ?* mkview
"  autocmd BufWinEnter ?* silent! loadview
"augroup END

"======================
"     Terminal
"======================
"nnoremap ` <c-w><c-w>
set splitbelow
command T :terminal ++rows=10

"=================================
"=== AIRLINE =====================
"=================================
let g:airline_theme='simple'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#whitespace#disabled = 1
let g:airline_detect_paste=1
"let g:airline_section_b='lol'
"let g:airline_section_c='lol'
"let g:airline_section_x='lol'
let g:airline_section_y=''
let g:airline_section_z=''
let g:airline#extensions#tabline#formatter = 'unique_tail'
