set nocompatible              " required
set shell=/bin/bash
let mapleader="\\"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
" code fold
let g:SimpylFold_docstring_preview=1
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

Plugin 'vim-scripts/indentpython.vim'

Plugin 'marijnh/tern_for_vim'
" autocomplete YouCompleteMe

Plugin 'Valloric/YouCompleteMe'
filetype plugin indent on  " required
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1 
let g:ycm_seed_identifiers_with_syntax=1 " keywords
let g:ycm_keep_logfiles=1
let g:ycm_log_level='debug'
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" For markdown preview
Plugin 'suan/vim-instant-markdown'
let g:instant_markdown_slow=1

call vundle#end()

" Input settings
set number
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" normal setting
color desert
set cursorline
set cursorcolumn

" copy and paste
set clipboard=unnamedplus

" syntax
syntax on

" indent
au BufNewFile,BufRead *.py,*.cpp,*.java
\ set tabstop=4 
\ softtabstop=4 
\ shiftwidth=4 
\ textwidth=80
\ noexpandtab
\ autoindent
\ fileformat=unix
\ encoding=utf-8

au BufNewFile,BufRead *.js,*.html,*.css
\ set tabstop=2
\ softtabstop=2
\ shiftwidth=2
\ autoindent

