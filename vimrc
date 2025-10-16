" FEATURES  --------------------------------------------------------------- {{{{
if has('syntax')
	syntax enable
endif
if has('filetype')
	filetype on
	filetype plugin on
	filetype indent on
endif
set number
set hlsearch
set cul
set showcmd
set showmode
set showbreak=>\
set nobackup
set noswapfile

set smartindent

" Set for Python PEP8 compatibility"
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set clipboard^=unnamed,unnamedplus,autoselect

" }}}
" Usability  --------------------------------------------------------------- {{{{

set ignorecase
set smartcase
if has('mouse')
  set mouse=a
endif

" }}}
" PLUGINS ---------------------------------------------------------------- {{{{

" Plugin code goes here.

let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" }}}
" MAPPINGS --------------------------------------------------------------- {{{{

" Copies the currently selected text to the system clipboard (OSX)
" [shouldn't need these]
"let @c = ':w !pbcopy'<CR>
"let @p = ':r !pbpaste'<CR>

"turn on/off the Taglist window
map T :TlistToggle<CR>

" }}}
" VIMSCRIPT -------------------------------------------------------------- {{{{

" This will enable code folding.
set foldmethod=indent
set foldcolumn=2
" Use the marker method of folding for VIM files.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}
" STATUS LINE ------------------------------------------------------------ {{{{

set statusline=%f\ %2*%m\ %1*%h%r%=[%{&encoding}\ %{&fileformat}]\ 
set statusline+=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" }}}
