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
"set relativenumber
set hidden
set mouse=a
set inccommand=split
set guifont=DroidSansMono\ Nerd\ Font\ 11
set nobackup
set nowritebackup
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300"
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.
if has("patch-8.1.1564")
" Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


let g:ale_disable_lsp = 1
let g:airline_powerline_fonts = 1
let mapleader="\<space>"


nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>git s :G<CR>

call plug#begin(stdpath('data') . '/plugged')

	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhartington/oceanic-next'
	Plug 'dense-analysis/ale'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-fugitive'


call plug#end()

set termguicolors
colorscheme OceanicNext
