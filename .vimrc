execute pathogen#infect()
filetype plugin indent on
" use 2 spaces for tab
set tabstop=2
set shiftwidth=2
set expandtab
" send temp vim files to a better dir
set backupdir=$TMPDIR//
set directory=$TMPDIR//

set number
set hidden

syntax enable
" use solarized
set background=dark
colorscheme solarized

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers=['eslint']

" NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" f2 to toggle paste, f3 to toggle line nums
set pastetoggle=<F2>
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
