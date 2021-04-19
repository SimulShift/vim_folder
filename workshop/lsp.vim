"==== VLSP ====================
nnoremap L :LspNextError<cr>
nnoremap H :LspPreviousError<cr>

command DD :LspDocumentDiagnostics

"==== debug ===============
"LSP
"let g:lsp_log_verbose = 1
"let g:lsp_log_file = expand('~/Proects/debug/vimlsp.log')
" for asyncomplete.vim log
"let g:asyncomplete_log_file = expand('~/asyncomplete.log')

"===== language server registration =====
"EMMET COMPLETION
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emmet#get_source_options({
    \ 'name': 'emmet',
    \ 'whitelist': ['html'],
    \ 'completor': function('asyncomplete#sources#emmet#completor'),
    \ }))

"OMNICompletion
call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
\ 'name': 'omni',
\ 'whitelist': ['*'],
\ 'blacklist': ['c', 'cpp', 'html', 'javascript' ],
\ 'completor': function('asyncomplete#sources#omni#completor'),
\ 'config': {
\   'show_source_kind': 1
\ }
\ }))

"File Directory Completion
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

