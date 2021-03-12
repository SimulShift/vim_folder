nnoremap <c-r> :!chromium %
set expandtab
set ts=2
set sw=2
set sts=2
"==== EMMET ====================
let g:user_emmet_leader_key=','

"==== HTML ==================
command Tidy :%!tidy -q -i --show-errors 0
