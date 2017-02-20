set number
set lines=25 columns=80
set tabstop=4
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
set shiftwidth=4
set softtabstop=4
set smartindent
set expandtab
color desert

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set fencs=utf-8

set clipboard=unnamedplus

" For plugin on

" instant_markdown
let g:instant_markdown_slow = 1
filetype plugin indent on

" recognize fortran file
au BufNewFile,BufRead *.inc set filetype=fortran
