call plug#begin()
" Plug 'alcesleo/vim-uppercase-sql'
" Plug 'airblade/vim-gitgutter'
Plug 'bbakersmith/vim-sexp-mappings-for-regular-people', { 'branch': 'raise-mappings' }
Plug 'chiel92/vim-autoformat'
Plug 'duff/vim-bufonly'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-clojure-highlight'
Plug 'jrdoane/vim-clojure-highlight'
Plug 'guns/vim-sexp'
Plug 'iCyMind/NeoSolarized'
Plug 'jpalardy/vim-slime'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
" Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kburdett/vim-nuuid'
" Plug 'lifepillar/vim-solarized8'
" Plug 'luochen1990/rainbow'
Plug 'nimaai/vim-shadow-cljs'
Plug '~/src/private/vim-shen'
" Plug 'mkitt/tabline.vim'
Plug 'mxw/vim-jsx'
Plug 'noscript/justdo.vim'
Plug 'pangloss/vim-javascript'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'rhysd/vim-textobj-ruby'
Plug 'rizzatti/dash.vim'
Plug 'roxma/vim-tmux-clipboard'
Plug 'scrooloose/nerdtree'
" Plug 'snoe/clj-refactor.nvim'
Plug 'clumsyjedi/clj-refactor.nvim' " due to not merged-in PR
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-surround'
Plug 'wlangstroth/vim-racket'
" Plug 'typedclojure/vim-typedclojure'
Plug 'vim-airline/vim-airline' ", { 'commit': 'c7a633ce8f4547e680377efe8ea70493fcce1349' }
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
" =================================================
" paredit has to be loaded after other lisp plugins
" Plug 'kovisoft/paredit'
" =================================================
call plug#end()

" SET OPTIONS ===============================================================

set autoindent
set autoread
" set autowriteall
" set background=light
set clipboard=unnamed
set cursorline
set expandtab
set foldlevelstart=99
set foldmethod=indent
" set guicursor=a:blinkon100
set hidden
set ignorecase
set incsearch
set lispwords+=fn-traced
set mouse=a
" set nofoldenable
set noshowcmd
set noshowmode
set nowrap
set number
set relativenumber
set shiftwidth=2
set smartcase
set splitright
set statusline=%f%m%=%y
set termguicolors

" LET BINDINGS ==============================================================

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'short_path'
let g:clj_refactor_prefix_rewriting = 0
let g:filetype_pl = "prolog"
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }
let g:gitgutter_enabled = 0
let g:paredit_electric_return = 0
let g:ruby_indent_block_style = 'do'
let g:sexp_mappings = {
      \ 'sexp_swap_list_backward':        '',
      \ 'sexp_swap_list_forward':         '',
      \ 'sexp_swap_element_backward':     '',
      \ 'sexp_swap_element_forward':      '',
      \ }
let g:sexp_filetypes = 'clojure,scheme,lisp,timl,shen'
let g:slime_target = 'tmux'
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.2"}
let g:slime_dont_ask_default = 1
" let g:rainbow_active = 1 
let mapleader = ","
let maplocalleader = ","
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" MAP KEYS ==================================================================

nnoremap <Leader>bd :set background=dark<CR>
nnoremap <Leader>bf :Buffers<CR>
nnoremap <Leader>bl :set background=light<CR>
nnoremap <Leader>bo :BufOnly<CR>
nnoremap <Leader>cp :let @* = expand("%") . ":" . line(".")<cr>
nnoremap <Leader>gf :GFiles --recurse-submodules<CR>
nnoremap <Leader>gs :Git<CR>
" NOTE: conficts with vim-sexp mappings
" nnoremap <Leader>i% gg=G``
" nnoremap <Leader>if [[=%``
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>rr :wall<CR>:Require!<CR>
nnoremap <Leader>rs :Reset<CR>
nnoremap <Leader>sw :set wrap!<CR>
nnoremap <Leader>/ :nohlsearch<CR>
nnoremap <C-S> :wall<CR>
" nnoremap <c-w>+ 7<c-w>+
" nnoremap <c-w>- 7<c-w>-
nnoremap + 7<c-w>>
nnoremap - 7<c-w><
nnoremap p p=`]
nnoremap \ ,

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
map * g*

vnoremap <Leader>db :DB<CR>

" SYNTAX / HIGHLIGHTS =======================================================

" for files without syntax rules
syntax keyword myTodo NOTE: REFACTOR:
highlight default link myTodo Todo

" CUSTOM COMMANDS ===========================================================

command! -nargs=1 DBConnect execute 'DB g:db = jdbc:postgresql://localhost:5432/' . <q-args> 
command! InitDB call InitDB()
" command! Reset execute 'Eval (app/reset)' | BufDo edit
command! Reset execute 'Eval (app/reset)'

" FUNCTIONS =================================================================

function! s:CollapseNsForm()
  if match(readfile(expand("%:p")),"(ns") != -1
    call searchpos("(ns")
    normal jzck
  endif
endfunction

function! InitDB()
  let s:db_path = 'tmp/db.txt'
  if filereadable(s:db_path)
    execute readfile(s:db_path)[0]
  endif
endfunction

function! s:SetMode()
  let l:mode = system("defaults read -g AppleInterfaceStyle 2>/dev/null")
  if l:mode == "Dark\n" && &background != "dark"
    set background=dark
  elseif l:mode != "Dark\n" && &background != "light"
    set background=light
  endif
  if exists(':AirlineRefresh')
    execute 'AirlineRefresh'
  endif
endfunction

" CALL FUNCTIONS ============================================================

call s:SetMode()

" AUTOCOMMANDS ==============================================================

" Evaluate Clojure buffers on load
" autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry
" fold ns form
" autocmd BufRead *.clj[cs]\= call searchpos('(ns') | normal jzck
autocmd BufRead *.clj[cs]\= call s:CollapseNsForm()
autocmd BufRead,BufNewFile *.service setfiletype dosini
autocmd FocusGained * call s:SetMode()
" autocmd FocusLost * silent! wall
" autocmd FileType prolog setlocal nocursorline

augroup insert_mode_match_paren
  autocmd InsertEnter * silent! NoMatchParen
  autocmd InsertLeave * silent! DoMatchParen
augroup END

" for files with syntax rules
autocmd Syntax * syntax keyword myTodo NOTE: REFACTOR: containedin=ALL
" don't show preview window in FZF
autocmd VimEnter * command! -bang -nargs=? 
      \ GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)
autocmd VimEnter * command! -bang -nargs=? 
      \ Buffers call fzf#vim#buffers(<q-args>, {'options': '--no-preview'}, <bang>0)
autocmd VimEnter * InitDB

" ABBREVIATIONS =============================================================

abbreviate bpry binding.pry

" MISC ======================================================================

colorscheme NeoSolarized

" search for non-ascii characters
" /[^\x00-\x7F]
