execute pathogen#infect()
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
:set number
:set hidden
syntax enable
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
autocmd vimenter * NERDTree

