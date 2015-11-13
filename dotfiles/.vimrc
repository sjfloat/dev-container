set modeline
set modelines=5
set expandtab
set shiftwidth=4
set tabstop=4

execute pathogen#infect()
Helptags
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_shell = "/bin/sh"

syntax on
filetype plugin indent on
