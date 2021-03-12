"dotnet run
nnoremap <leader>do :!dotnet run<cr>

" Mappings
command OFU :OmniSharpFindUsages
command OFS :OmniSharpFindSymbol

let g:OmniSharp_selector_findusages = 'vim-clap'
let g:OmniSharp_selector_ui = 'vim-clap'

" Server Config
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1

"HIGHLIGHTING CONFIGURATIONS
let g:OmniSharp_highlighting = 0
let g:OmniSharp_highlight_types = 3
let g:OmniSharp_highlight_debug = 1
let g:omnicomplete_fetch_full_documentation = 1
let g:OmniSharp_popup_options = {
\ 'highlight': 'Normal',
\ 'padding': [0],
\ 'border': [1]
\}

let g:OmniSharp_highlight_groups = {
\ 'csUserIdentifier': [
\   'constant name', 'enum member name', 'field name', 'identifier',
\   'local name', 'parameter name', 'property name', 'static symbol'],
\ 'csUserInterface': ['interface name'],
\ 'csUserMethod': ['extension method name', 'method name'],
\ 'csUserType': ['class name', 'enum name', 'namespace name', 'struct name'],
\}

" Hotkeys
nnoremap <leader>st :OmniSharpStopServer
nnoremap <leader>ss :OmniSharpStartServer

augroup omnisharp_commands
    autocmd!
    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution
	" and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>

	" Start the omnisharp server for the current solution
	nnoremap <leader>ss :OmniSharpStartServer<CR>
	nnoremap <leader>sp :OmniSharpStopServer<CR>
	nnoremap <leader>hi :OmniSharpHighlightEcho<CR>
augroup END


