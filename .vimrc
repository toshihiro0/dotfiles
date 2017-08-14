set nocompatible

"display
"-----------------
set number
set ruler

"syntax color
"-----------------
syntax on
set cursorline
set background=dark
colorscheme hybrid

"indent
"-----------------
set tabstop=2
set shiftwidth=2
set expandtab

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/toshihiro/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/toshihiro/.cache/dein')
  call dein#begin('/home/toshihiro/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/toshihiro/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/neocomplete.vim')
	call dein#add('nathanaelkane/vim-indent-guides')
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"neocomplete-----------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_underbar_completion = 1
let g:neocomplete#enable_camel_case_completion  =  1
let g:neocomplete#max_list = 20
let g:neocomplete#auto_completion_start_length = 2
let g:neocomplete#enable_auto_close_preview = 0

"vim-indent-guides------------------------
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size = 1

