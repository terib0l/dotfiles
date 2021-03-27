" ----------
"  key bind
" ----------

" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>
noremap <Space>s :source $MYVIMRC<CR>
noremap <Space>s :source $MYVIMRC<CR>

" Split View movekey bind
noremap <silent><C-h> <C-w>h
noremap <silent><C-j> <C-w>j
noremap <silent><C-k> <C-w>k
noremap <silent><C-l> <C-w>l

" Increasing movekey bind
nnoremap <S-h> 10<Left>
nnoremap <S-j> 10<Down>
nnoremap <S-k> 10<UP>
nnoremap <S-l> 10<Right>
vnoremap <S-h> 10<Left>
vnoremap <S-j> 10<Down>
vnoremap <S-k> 10<UP>
vnoremap <S-l> 10<Right>

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:  " InsertMode抜けて保存
" Insert Mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

" Default nop
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Right> <nop>
vnoremap <Left> <nop>
vnoremap <BS> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <BS> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>
noremap <BS> <nop>

" encode setting
set encoding=utf-8

" editer setting
set number
set splitbelow
set splitright
set noequalalways
set wildmenu

" cursorl setting
set ruler
set cursorline

" tab setting
set tabstop=2
set shiftwidth=2
set lcs=tab:>.
set expandtab
set autoindent
set smartindent

" search setting
set incsearch
set smartcase
set hlsearch

" other setting
set list
set showmatch
set clipboard=unnamed

" Mouse Activate setting
if !has('nvim') && has('mouse')
  set mouse=a
  if has('mouse_sgr')
    set ttymouse=sgr
  elseif v:version > 703 || v:version is 703 && has('patch632')
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  endif
endif
