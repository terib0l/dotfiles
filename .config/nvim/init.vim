"  --------
"  key bind
"  --------

" Normal Mode
cnoremap init :edit $MYVIMRC<CR>
cnoremap commit :source $MYVIMRC<CR>

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

" Home / End movekey bind
nnoremap <C-e> <End>

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
set visualbell

" cursorl setting
set ruler
set cursorline
set nocursorcolumn

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
set noswapfile
set nobackup
set autoread
set hidden
set showcmd
set nowrap

" for Coding setting
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap {<Enter> {}<LEFT><CR><ESC><S-o>
inoremap ( ()<LEFT>
inoremap (<Enter> ()<LEFT><CR><ESC><S-o>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" Resice Window bind
nnoremap <C-w>h <C-w>3<
nnoremap <C-w>l <C-w>3>
nnoremap <C-w>k <C-w>3+
nnoremap <C-w>j <C-w>3-

" Split window bind
nnoremap ss :sp<Space>
nnoremap sv :vs<Space>

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

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Path setting
" Pluginディレクトリのパス
let s:dein_dir = expand('~/.vim/dein')
" dein.vimのパス
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" tomlのディレクトリへのパス
let s:toml_dir = expand('~/.config/nvim')  

" set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  " 起動時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  " 利用時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------
