" Parts stolen from: https://github.com/skwp/dotfiles

" ######################## Vundle ########################

set nocompatible             " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'duff/vim-bufonly'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'edsono/vim-matchit'
Plugin 'jpalardy/vim-slime'
Plugin 'mkitt/tabline.vim'
Plugin 'vim-scripts/paredit.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'kana/vim-filetype-haskell'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-scripts/buffer-grep'
Plugin '907th/vim-auto-save'
Plugin 'vim-scripts/buffers_search_and_replace'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ########################################################
"

" remap leader character
let mapleader=","

" show tab numbers in tab labels
set guitablabel=\(%N\)\ %t\ %M

" disable plugin from autoloading
let g:nerdtree_tabs_loaded = 1
" fix strange arrow issues in cygwin on windows
if has("win32unix")
  let g:NERDTreeDirArrows=0
endif

" easygrep options
let g:EasyGrepSearchCurrentBufferDir=0
let g:EasyGrepRecursive=1

cd ~/

set ttimeoutlen=50

" syntax settings
syntax on
set hidden

" swap files location
set directory=~/temp/vim-swap-files/

" == Indentation ==
set autoindent
set smartindent
set smarttab
set shiftwidth=2
"set softtabstop=2
"set tabstop=2
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" == Folds ==

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" == Scrolling

set scrolloff=4         "Start scrolling when we're 4 lines away from margins:nnoremap <Space> i<Space><Esc>

" Disable scrollbars
set guioptions=iaem

" Disable alt key mappings for menu in gvim
set winaltkeys=no

" == Backup files
set nobackup
set nowb

" == Search settings ==
set incsearch
set hlsearch

" == Line numbering ==
set number

" == Line highlight == 
set cursorline

" extension to numberlines plugin to fix the toggle when switching windows
"autocmd WinLeave * :call FocusLost()
"autocmd WinEnter * :call FocusGained()

" == Colors ==
let g:solarized_termcolors=256
colorscheme xoria256

" == Mousymouse
set mouse=a
set ttymouse=xterm2

" remap clearance of text highlighting
nnoremap <Leader>b :Bufferlist<CR>

" remap clearance of text highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" short cut for changing current directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" == Key map for quick resizing of window ==

" resize horzontal split window
nmap <C-Up> 5<C-W>-<C-W>-
nmap <C-Down> 5<C-W>+<C-W>+
" resize vertical split window
nmap <C-Left> 5<C-W>><C-W>>
nmap <C-Right> 5<C-W><<C-W><

" == NERDTree key mappings ==

nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nc :NERDTreeTabsClose<CR>

" == Easily navigate split windows ==

nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" == Easily jump between buffers
nmap <silent> <C-J> :bprevious<CR>
nmap <silent> <C-K> :bnext<CR>

" remap movement keys beginning and end of line
map <Leader>a ^
map <Leader>e $

" remap keys for copying to and pasting from clipboard
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y

" == Fonts, encoding, statusline ==

set guifont=Monospace\ 13
set encoding=utf-8
set laststatus=2

"configure status line
set statusline=%F\ %m\ %{fugitive#statusline()}%=%y\ %l,%c\ %P
" auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Markdown extension
au BufNewFile,BufRead *.md set ft=md

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" abbreviations
ab bp binding.pry

" Simple way to turn off Gdiff splitscreen
" works only when diff buffer is focused
"if !exists(":Gdiffoff")
  "command Gdoff diffoff | q | Gedit
"endif

let g:slime_target = "tmux"

if bufwinnr(1)
  map + 10<C-W>>
  map - 10<C-W><
endif

" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

" configure browser for haskell_doc.vim
let g:haddock_browser = "firefox"

" fix the alt keys issue in terminal mode
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

let g:Powerline_symbols = 'fancy'

" in order for ctrlp to find all files
let g:ctrlp_max_files = 0
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
let g:ctrlp_working_path_mode = 'ra'
" ignore files in .git
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0
let g:auto_save = 1
