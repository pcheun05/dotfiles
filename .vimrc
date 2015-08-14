syntax on
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/peter/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/peter/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
" Neobundle 'ingydotnet/yaml-vim'
NeoBundle 'chase/vim-ansible-yaml'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
" NeoBundle 'mileszs/ack.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'klen/python-mode'
" NeoBundle 'davidhalter/jedi-vim'
" NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'scrooloose/nerdtree'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" WTF does this do?
set laststatus=2

" Highlights search results
set hlsearch

" This sets Tab spaces
set ts=4


" let g:ackprg = 'ag --nogroup --nocolor --column'


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

set term=xterm-256color
set number

" Make vim copy to system clipboard
set clipboard=unnamed
