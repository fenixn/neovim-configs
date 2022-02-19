" Show line numbers
set number relativenumber

" Define plugins for vim-plug
call plug#begin('~/.vim/plugged')
" Gruvbox theme plugin
Plug 'morhetz/gruvbox'
" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Project tree
Plug 'preservim/nerdtree'
Plug 'StanAngeloff/php.vim'
" Split terminal
Plug 'vimlab/split-term.vim'
call plug#end()

" Use gruvbox theme
let g:gruvbox_contrast_dark='medium'
autocmd vimenter * nested colorscheme gruvbox
set bg=dark

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
