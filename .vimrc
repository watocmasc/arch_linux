colorscheme elflord

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number

call plug#begin()

" List your plugins here

Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'

let g:airline#extensions#default#section_c = '%{strftime("%H:%M")}'

call plug#end()
