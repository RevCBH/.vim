execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme vividchalk
set smarttab
set nojoinspaces
set hidden


" coffeescript {{{
au BufWritePost *.coffee silent CoffeeMake! -o tmp/trash | cwindow
" }}}

" Edit-fu {{{
inoremap jk <ESC>l
vnoremap jk <ESC>l
inoremap <ESC> <NOP>
"inoremap g; ,
" }}}

" Consistent line indenting across modes {{{
inoremap <M-]> <C-T>
inoremap <M-[> <C-D>

vnoremap <M-]> >
vnoremap <M-[> <

nnoremap <M-]> >>
nnoremap <M-[> <<
" }}}

" Search improvements {{{

nnoremap <leader>/ :nohlsearch<CR>

" }}}

" Vimscript folding {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldlevelstart=0
augroup END
" }}}

" NerdTree {{{
autocmd vimenter * NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" }}}

"{{{ .vimrc editing
nnoremap <leader>e<leader> :tabf $MYVIMRC<CR>
nnoremap <leader>s<leader> :source $MYVIMRC<CR>
"}}}
