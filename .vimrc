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


let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers=['eslint']

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set pastetoggle=<F2>
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
