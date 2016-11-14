execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme vividchalk
set smarttab
set tabstop=4
set nojoinspaces
set expandtab
set shiftwidth=2
set softtabstop=2
set hidden

set backupdir=~/.tmp//,.
set directory=~/.tmp//,.
set undodir=~/.tmp//,.

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

set wildignore+=*.class,*.journal

au BufRead,BufNewFile *.tjade set filetype=jade
au BufRead,BufNewFile *.rb set smarttab nojoinspaces softtabstop=2 shiftwidth=2 expandtab
au BufWrite *.tf TerraformFmt

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
"inoremap <ESC> <NOP>
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

" Scala folding {{{
au BufRead,BufNewFile *.scala set foldmethod=indent foldnestmax=10 nofoldenable foldlevel=1
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" }}}

" Tab completion improvements {{{
set wildmode=list:longest
" set wildignore=*.o,*.obj,*~
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
nnoremap <leader><leader>/ :Ggrep
"}}}

"{{{ Commmenting hotkeys
nmap <D-/> mp<leader>c<space><CR>`p
imap <d-/> jkmp<leader>c<space><cr>`pi
vmap <D-/> <leader>c<space><cr>gv
"}}}

" {{{ Twiddle case
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
" }}}

" {{{ Pane sizing
noremap <leader>+ :resize +100<CR>
noremap <leader>ww <C-w><C-w> :resize+100<CR>
" }}}
