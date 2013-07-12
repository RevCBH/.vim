execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme vividchalk
set smarttab
set nojoinspaces
set hidden

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

au BufRead,BufNewFile *.tjade set filetype=jade

" buffer dancing {{{
noremap <leader>b <C-^>
noremap <leader>B :CtrlPBuffer<CR>
" }}}

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
imap <D-]> <C-T>
imap <D-[> <C-D>

vnoremap <D-]> >
vnoremap <D-[> <

nnoremap <D-]> >>
nnoremap <D-[> <<
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

"{{{ Git (fugitive) mappings
nnoremap <leader>gs :Gstatus<CR>
"}}}

"{{{ Commmenting hotkeys
nmap <D-/> <leader>c<space><CR>k
"}}}
