set encoding=UTF-8
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal
" mode
" expandtab:        When this option is enabled, vi will use spaces instead
" of tabs
 set tabstop     =2
 set softtabstop =2
 set shiftwidth  =2
 set expandtab


"nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''
let g:NERDTreeGitStatusIndicatorMapCustom = {
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

autocmd vimenter * NERDTree

set number
set relativenumber
set hidden
set mouse=a
set inccommand=split
set guifont=DroidSansMono\ Nerd\ Font\ 11

let g:ale_disable_lsp = 1
let g:airline_powerline_fonts = 1
let mapleader="\<space>"


nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

call plug#begin(stdpath('data') . '/plugged')

	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhartington/oceanic-next'
	Plug 'dense-analysis/ale'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'

call plug#end()

set termguicolors
colorscheme OceanicNext
