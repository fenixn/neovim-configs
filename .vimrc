set number

call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
