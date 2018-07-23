call plug#begin()
Plug 'bbakersmith/vim-sexp-mappings-for-regular-people', { 'branch': 'raise-mappings' }
Plug 'duff/vim-bufonly'
Plug 'easymotion/vim-easymotion'
Plug 'elixir-editors/vim-elixir'
Plug 'ervandew/supertab'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'iCyMind/NeoSolarized'
Plug 'jpalardy/vim-slime'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'nimaai/vim-lfe'
Plug 'nimaai/vim-shen'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rhysd/vim-textobj-ruby'
Plug 'rizzatti/dash.vim'
Plug 'roxma/vim-tmux-clipboard'
Plug 'scrooloose/nerdtree'
Plug 'snoe/clj-refactor.nvim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
" =================================================
" paredit has to be loaded after other lisp plugins
" Plug 'kovisoft/paredit'
" =================================================
call plug#end()

set autoindent
set autoread
set autowriteall
set background=dark
set clipboard=unnamed
" set cursorline
set expandtab
set foldmethod=indent
set ignorecase
set incsearch
set mouse=a
set nofoldenable
set noshowcmd
set noshowmode
set nowrap
set number
set relativenumber
set shiftwidth=2
set smartcase
set statusline=%f%m%=%y
" set termguicolors

let mapleader=","
nnoremap \ ,

let g:paredit_electric_return = 0
let g:ruby_indent_block_style = 'do'
let g:slime_target = 'tmux'
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.1"}
let g:slime_dont_ask_default = 1

colorscheme NeoSolarized

autocmd FocusLost * silent! wall
augroup insert_mode_match_paren
  autocmd InsertEnter * silent! NoMatchParen
  autocmd InsertLeave * silent! DoMatchParen
augroup END

nnoremap <Leader>bf :Buffers<CR>
nnoremap <Leader>bo :BufOnly<CR>
nnoremap <Leader>gf :GFiles<CR>
nnoremap <Leader>ib gg=G``
" nnoremap <Leader>if [[=%``
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>sw :set wrap!<CR>
nnoremap + 10<C-W>>
nnoremap - 10<C-W><

map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <M-l> <C-l>
map <M-h> <C-h>
map <M-j> <C-j>
map <M-k> <C-k>
map <M-u> <C-u>
map <M-o> <C-o>
map <M-i> <C-i>

" remap again for fugitive and thus disable paredit's mapping
nnoremap do :diffget<CR>
nnoremap dp :diffput<CR>

let g:sexp_mappings = {
  \ 'sexp_swap_list_backward':        '',
  \ 'sexp_swap_list_forward':         '',
  \ 'sexp_swap_element_backward':     '',
  \ 'sexp_swap_element_forward':      '',
  \ }

" for files without syntax rules
syntax keyword myTodo NOTE:
" for files with syntax rules
autocmd Syntax * syntax keyword myTodo NOTE: containedin=ALL
highlight default link myTodo Todo
