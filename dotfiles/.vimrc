" Part stolen from: https://github.com/skwp/dotfiles

" ######################## Vundle ########################

set nocompatible             " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'duff/vim-bufonly'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab.git'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'edsono/vim-matchit'
Plugin 'mkitt/tabline.vim'
Plugin 'vim-scripts/paredit.vim'
" Plugin 'bhurlow/vim-parinfer'
" Plugin 'oakmac/parinfer-viml'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-leiningen'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'scrooloose/nerdcommenter.git'
" conficts with dbext
" Plugin 'vim-scripts/bufkill.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/buffer-grep'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'
Plugin 'danchoi/ri.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mtscout6/vim-cjsx'
Plugin 'tpope/vim-obsession'
" Plugin 'mtscout6/vim-cjsx'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/dbext.vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/gem-ctags'
Plugin 'jpalardy/vim-slime'

" All of your Plugins must be added before the following line
call vundle#end()            " required

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

syntax enable
filetype plugin indent on    " required

" remap leader character
let mapleader=","

" disable plugin from autoloading
" let g:nerdtree_tabs_loaded = 0

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
set foldnestmax=7       "deepest fold is 7 levels
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
set relativenumber
set number

" == Line highlight == 
set cursorline

" disable highlighting of matching paren
let g:loaded_matchparen=1

" == Colors ==
" let g:solarized_termcolors=256
colorscheme solarized

" == Mousymouse
set mouse=
" set ttymouse=xterm2

" fix not working backspace
set backspace=indent,eol,start

set omnifunc=syntaxcomplete#Complete

" remap clearance of text highlighting
nnoremap <Leader>b :Bufferlist<CR>

" remap clearance of text highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" short cut for changing current directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" == Key map for quick resizing of window ==

" == NERDTree key mappings ==

nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nc :NERDTreeTabsClose<CR>

" == Easily navigate split windows ==

nmap <silent> <C-k><C-k> :wincmd k<CR>
nmap <silent> <C-j><C-j> :wincmd j<CR>
nmap <silent> <C-h><C-h> :wincmd h<CR>
nmap <silent> <C-l><C-l> :wincmd l<CR>

" == Remap relative/absolute line number toggle ==
nmap <silent> <Leader>lta :set norelativenumber<CR>
nmap <silent> <Leader>ltr :set relativenumber<CR>

" == Easily jump between buffers
" nmap <silent> <C-J> :bprevious<CR>
" nmap <silent> <C-K> :bnext<CR>

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

" auto-clean fugitive buffers
" autocmd BufReadPost fugitive://* set bufhidden=delete

" Markdown extension
au BufNewFile,BufRead *.md set ft=md

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Mark syntax errors with :signs
let g:syntastic_enable_signs=1

" Do not automatically jump to the error when saving the file
" Jump feature is annoying to me as it automatically moves the cursor
let g:syntastic_auto_jump=0

" Show the error list automatically
" Allows you to easily navigate the quick fix list
let g:syntastic_auto_loc_list=1

" manual checking
let g:syntastic_mode_map = { "mode": "passive" }

" This is where the magic happens. Chain together different style checkers
" in order to check for both style flaws and syntax errors.
" Syntax checkers: https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
let g:syntastic_ruby_checkers=['rubocop', 'mri']
let g:vimrubocop_rubocop_cmd = 'bundle exec rubocop '

nnoremap <Leader>sc :SyntasticCheck<CR>
nnoremap <Leader>sr :SyntasticReset<CR>

nnoremap <Leader>gg :GitGutterToggle<CR>

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

map + 10<C-W>>
map - 10<C-W><
map <Leader>+ 10<C-W>+
map <Leader>- 10<C-W>-

" use ghc functionality for haskell files
"au Bufenter *.hs compiler ghc

" configure browser for haskell_doc.vim
"let g:haddock_browser = "firefox"

let g:Powerline_symbols = 'fancy'

" in order for ctrlp to find all files
let g:ctrlp_max_files = 0
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
let g:ctrlp_working_path_mode = 'ra'
" ignore files in .git
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" vim does not indent some html tags by default
let g:html_indent_inctags = "html,body,head,tbody"

" add an additional space when commenting
let g:NERDSpaceDelims = 1

let g:gitgutter_enabled = 0

map <Leader>aa :Tab /[^\s]\s\w/l0<CR>

" <dp> and <do> from fugitive are not working
map <Leader>dp :diffput<CR>
map <Leader>dg :diffget<CR>

" dbext profiles
let g:dbext_default_always_prompt_for_variables = 0
let g:dbext_default_profile_pg = 'type=PGSQL:user=mkmit:passwd=mkmit:dbname=madek-v3_development:cmd_terminator=;'
let g:dbext_default_profile_mysql = 'type=MYSQL:user=root:passwd=:dbname=leihs2_dev:cmd_terminator=;'

nmap <Leader>fsql :%!sqlformat -r -<CR>
vmap <Leader>fsql :!sqlformat -r -<CR>

" disable auto comment lines when pressing 'o' or 'O' in normal mode
au FileType * set fo-=o
