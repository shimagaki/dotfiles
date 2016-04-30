set nocompatible               " be iMproved
filetype off

if has('vim_starting')
	   " 初回起動時のみruntimepathにneobundleのパスを指定する
	       set runtimepath+=~/.vim/bundle/neobundle.vim/
	       endif
	   "    " NeoBundleを初期化
	   "you can use neobundle command from here 
	       call neobundle#begin(expand('~/.vim/bundle/'))
    	       NeoBundleFetch 'Shougo/neobundle.vim'
	       "    " インストールするプラグインをここに記述
	   "    " ファイルタイプ別のプラグイン/インデントを有効にする
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
	  exec "imap " . k . " " . k . "<C-N><C-P>"
  endfor

  imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
	   filetype plugin indent on
filetype plugin indent on

if has('mac')
"let g:vimproc_dll_path = $VIMRUNTIME. '/autoload/proc.so'
let g:vimproc_dll_path = $VIMRUNTIME. '/autoload/vimproc_mac.so'
endif



" Automaticaly close bracket -> these were commented out, there is plugin vim-autoclose
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
NeoBundle 'tpope/vim-fugitive'	       
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'scrooloose/nerdtree'
"My Color Schme 
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/lucius'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/unite.vim' 
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Townk/vim-autoclose' "complement of bracket 
NeoBundle 'cohama/agit.vim'
NeoBundle 'open-browser.vim'
NeoBundle 'tyru/open-browser-github.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a  google\ chrome'
NeoBundleCheck
call neobundle#end()
"after here cannot use neobundle command
filetype plugin indent on     " required!
filetype indent on
syntax on
set ruler
set background=dark
set number
set backspace=indent,eol,start
set hlsearch 
set incsearch
nnoremap / /\v
nnoremap ? ?\v
set spelllang=en,cjk
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit startinest
runtime ftplugin/man.vim "enable to look man in vim with colorsd
nnoremap gc :<C-u>!git<Space>  
"nnoremap go :<C-u>OpenGithubFile<CR>
"xnoremap go :OpenGithubFile<CR>
map <silent>,go :OpenGithubFile<CR>
map '<,'>,go '<,'>OpenGithubFile<CR>
"open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

set backspace=2
colorscheme jellybeans

