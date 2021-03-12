command -nargs=1 NO :!node <args>
command Html :!chromium index.html<cr>

command SW exec ':source ' . g:Plugin . 'webdev.vim' . '|echo "sourced webdev.vim"'

command Index exec ':e ' . $PROJECTROOT . '/index.html'
