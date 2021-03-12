
function EditFtplugin()
	let currentft = &filetype
	execute  'e ~/.vim/ftplugin/' . currentft . '.vim'
endfunction

command EF call EditFtplugin()

function EditFtpluginAfter()
	let currentft = &filetype
	execute  'e ~/.vim/after/ftplugin/' . currentft . '.vim'
endfunction

command EFA call EditFtpluginAfter()
