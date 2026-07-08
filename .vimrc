set nocompatible               " be iMproved
filetype off

if has('vim_starting')
    " Only specify the neobundle path in runtimepath on first launch
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Initialize NeoBundle
" You can use neobundle commands from here
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" List plugins to install here
" Enable filetype-specific plugins/indent
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
" Color schemes
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/lucius'
NeoBundle 'tomasr/molokai'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'cohama/agit.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'tyru/open-browser-github.vim'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'kannokanno/previm'

NeoBundleCheck
call neobundle#end()
" After here, neobundle commands cannot be used

filetype plugin indent on
filetype indent on
syntax on

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
    exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

if has('mac')
    let g:vimproc_dll_path = $VIMRUNTIME. '/autoload/vimproc_mac.so'
endif

set ruler
set background=dark
set number
set backspace=indent,eol,start
set hlsearch
set incsearch
set spelllang=en,cjk

nnoremap / /\v
nnoremap ? ?\v

autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit startinest

runtime ftplugin/man.vim " Enable viewing man pages in vim with colors

nnoremap gc :<C-u>!git<Space>

" Bracket auto-close is handled by vim-autoclose plugin
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>

" open-browser-github mappings
"nnoremap go :<C-u>OpenGithubFile<CR>
"xnoremap go :OpenGithubFile<CR>
map <silent>,go :OpenGithubFile<CR>
map '<,'>,go '<,'>OpenGithubFile<CR>

" open-browser.vim
let g:netrw_nogx = 1 " Disable netrw's gx mapping
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a google\ chrome'
let g:vim_markdown_folding_disabled = 1

colorscheme jellybeans
