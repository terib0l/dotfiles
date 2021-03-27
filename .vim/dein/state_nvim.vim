if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/terib0l/.vim/dein/repos/github.com/Shougo/dein.vim,/home/terib0l/.config/nvim,/etc/xdg/nvim,/home/terib0l/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/terib0l/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/terib0l/.config/nvim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/terib0l/Git/dotfiles/.config/nvim/init.vim', '/home/terib0l/.config/nvim/dein.toml', '/home/terib0l/.config/nvim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/terib0l/.vim/dein'
let g:dein#_runtime_path = '/home/terib0l/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/terib0l/.vim/dein/.cache/init.vim'
let &runtimepath = '/home/terib0l/.vim/dein/repos/github.com/Shougo/dein.vim,/home/terib0l/.config/nvim,/etc/xdg/nvim,/home/terib0l/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/terib0l/.vim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/terib0l/.vim/dein/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/terib0l/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/terib0l/.config/nvim/after'
filetype off
  nnoremap [denite] <Nop>
  nmap <C-d> [denite]
  nnoremap <silent> [denite]g :<C-u>Denite grep -buffer-name=search-buffer-denite<CR>
  nnoremap <silent> [denite]r :<C-u>Denite -resume -buffer-name=search-buffer-denite<CR>
  nnoremap <silent> [denite]p :<C-u>Denite file_rec<CR>
  call denite#custom#var('grep','command',['pt','--follow','--nogroup','--nocolor','--hidden'])
  call denite#custom#var('grep','default_opts',[])
  call denite#custom#var('grep','recursive_opts',[])
  call denite#custom#var('file_rec','command',['pt','--follow','--nogroup','--nocolor','--hidden','-g',''])
  colorscheme tender
  set background=dark
  syntax on
  set t_Co=256
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set signcolumn=yes
  set updatetime=1000
  nnoremap [gitgutter] <Nop>
  nmap <C-g> [gitgutter]
  nmap [gitgutter]j <Plug>GitGutterNextHunk
  nmap [gitgutter]k <Plug>GitGutterPrevHunk
  nmap [gitgutter]u <Plug>GitGutterUndoHunk
  nmap n <Plug>(anzu-n-with-echo)
  nmap N <Plug>(anzu-N-with-echo)
  nmap * <Plug>(anzu-star)
  nmap # <Plug>(anzu-sharp)
  command Gst :Gstatus
  command Gdf :Gdiff
  command Gbl :Gblame
  command Gps :Gpush
  command Gpl :Gpull
  let g:deoplete#enable_at_startup = 1
  inoremap <expr><Tab> pumvisible() ? "\<DOWN>" : "\<Tab>"
  inoremap <expr><S-Tab> pumvisible() ? "\<UP>" : "\<S-Tab>"
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['deoplete.nvim'])
