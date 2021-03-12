" Setting Global Configuration
let mapleader = " "
let g:Plugin='~/.vim/plugin/'

call plug#begin('~/.vim/plugged')
"==== FileType Plugins =============================
	"Go
		"Plug 'fatih/vim-go'
	"Javascript
		"Plug 'pangloss/vim-javascript'
"==== Language Servers ==============================
		Plug 'prabirshrestha/vim-lsp'
		Plug 'mattn/vim-lsp-settings'
"==== Asyncomplete =====================================
		Plug 'prabirshrestha/asyncomplete.vim'
		Plug 'prabirshrestha/asyncomplete-lsp.vim'
		"Omni
		Plug 'yami-beta/asyncomplete-omni.vim'
		"file directories
		Plug 'prabirshrestha/asyncomplete-file.vim'
		"Emmet
		Plug 'prabirshrestha/asyncomplete-emmet.vim'
		"Ultisnips
		Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
"==== Snippets =================
	"Snippets
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'
		Plug 'mattn/emmet-vim'
"==== Styling======================================
	"Colorschemes
		Plug 'morhetz/gruvbox'
		Plug 'srcery-colors/srcery-vim'
	"Status Line
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
	"Gutter
		Plug 'chrisbra/changesplugin'
	" Vertical Lines for non-tab spacing
		Plug 'Yggdroot/indentLine'
"==== Workflow =======================
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'tpope/vim-surround'
	Plug 'godlygeek/tabular'
	Plug 'AndrewRadev/splitjoin.vim'
	"Plug 'jiangmiao/auto-pairs'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"	Plug 'plasticboy/vim-markdown'
"Unused===============================
	"Linter Engine
		"Plug 'dense-analysis/ale'
		"Plug 'prettier/vim-prettier'
	"Plug 'farseer90718/vim-taskwarrior'
	" Highlight based on indent level
		"Plug 'emilsoman/indent-highlight.vim'
call plug#end()

"==== Testing =============
set viminfo+=n~/.vim/viminfo
"source ~/.vim/src/RunShellCommandPopup.vim
let g:user_emmet_leader_key=','
