" Show line numbers
set number

" Define plugins for vim-plug
call plug#begin('~/.vim/plugged')
" Gruvbox theme plugin
Plug 'morhetz/gruvbox'
call plug#end()

" Use gruvbox theme
autocmd vimenter * ++nested colorscheme gruvbox
