call plug#begin()
Plug 'bbakersmith/vim-sexp-mappings-for-regular-people', { 'branch': 'raise-mappings' }
Plug 'bronson/vim-visual-star-search'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'clojure-vim/clojure.vim'
Plug 'duff/vim-bufonly'
Plug 'easymotion/vim-easymotion'
Plug 'ekalinin/Dockerfile.vim'
Plug 'ervandew/supertab'
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'jpalardy/vim-slime'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'kburdett/vim-nuuid'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mtscout6/vim-cjsx'
Plug 'Olical/conjure'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'rhysd/vim-textobj-ruby'
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline' ", { 'commit': 'c7a633ce8f4547e680377efe8ea70493fcce1349' }
Plug 'vim-autoformat/vim-autoformat'
Plug 'vim-ruby/vim-ruby'

" Plug 'nimaai/vim-shadow-cljs'
Plug '~/src/misc/vim-shadow-cljs'

" =================================================
" paredit has to be loaded after other lisp plugins
" Plug 'kovisoft/paredit'
" =================================================
call plug#end()

" SET OPTIONS ===============================================================

set autoindent
set autoread
" set autowriteall
set clipboard=unnamed
set cursorline
set expandtab
set foldenable
set foldlevelstart=99
set foldmethod=indent
" set guifont=Hack\ Nerd\ Font
set hidden
set ignorecase
set incsearch
set lispwords+=fn-traced
set lispwords+=fn-traced*
set mouse=a
set noshowcmd
set noshowmode
set nowrap
set number
set relativenumber
set shiftwidth=2
set smartcase
set splitright
" set statusline=%f%m%=%y
set termguicolors

" LET BINDINGS ==============================================================

let db_ui_win_position = 'right'

let g:airline_theme = 'catppuccin'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''

let g:airline_powerline_fonts = 0
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#branch#format = 'CustomBranchName'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'short_path'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline_section_y = ''
let g:clj_refactor_prefix_rewriting = 0
let g:clojure_align_subforms = 1
let g:clojure_discard_macro = 1
let g:conjure#filetypes = ['clojure']
" let g:conjure#client_on_load = v:false
" let g:conjure#log#hud#enabled = v:false
let g:db_ui_table_helpers = {
      \	'postgresql': {
      \	  'Describe': '\d {table}'
      \   }
      \ }
let g:filetype_pl = "prolog"
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }
let g:gitgutter_enabled = 0
let g:loaded_perl_provider = 0
let g:nvim_tree_disable_netrw = 0
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
let mapleader = ","
let maplocalleader = ","
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" MAP KEYS ==================================================================

inoremap <tab> <c-x><c-o>

nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>bf :Buffers<CR>
nnoremap <Leader>bo :BufOnly<CR>
nnoremap <Leader>cp :let @* = expand("%") . ":" . line(".")<cr>
nnoremap <Leader>db :DBUIToggle<CR>
nnoremap <Leader>gf :GFiles --recurse-submodules<CR>
nnoremap <Leader>gs :Git<CR>
" NOTE: conficts with vim-sexp mappings
" nnoremap <Leader>i% gg=G``
" nnoremap <Leader>if [[=%``
nnoremap <Leader>nt :NvimTreeToggle<CR>
nnoremap <Leader>nf :NvimTreeFindFile<CR>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>rr :Require<CR>
" nnoremap <Leader>rs :Reset<CR>
nnoremap <Leader>sw :set wrap!<CR>
nnoremap <Leader>/ :nohlsearch<CR>
nnoremap <C-S> :wall<CR>
" nnoremap + 7<c-w>>
" nnoremap - 7<c-w><
nnoremap <silent> <Right> :vertical resize +7<CR>
nnoremap <silent> <Left> :vertical resize -7<CR>
nnoremap <silent> <Up> :resize +3<CR>
nnoremap <silent> <Down> :resize -3<CR>
nnoremap <silent> + :vertical resize +7<CR>
nnoremap <silent> - :vertical resize -7<CR>
nnoremap p p=`]
nnoremap \ ,

map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map * g*


" SYNTAX / HIGHLIGHTS =======================================================

" for files without syntax rules
syntax keyword myTodo NOTE: REFACTOR:
highlight default link myTodo Todo

" CUSTOM COMMANDS ===========================================================

command! -nargs=1 DBConnect execute 'DB g:db = jdbc:postgresql://localhost:5415/' . <q-args>
" command! InitDB call InitDB()
" command! Reset execute 'Eval (app/reset)' | BufDo edit
" command! Reset execute 'Eval (app/reset)'
command! Cljf silent execute "!cljfmt -c cljfmt.edn -p %"
command! -nargs=1 Browse silent execute '!open' shellescape(<q-args>,1)

" FUNCTIONS =================================================================

function! CustomBranchName(name)
  return '[' . a:name . ']'
endfunction

function! s:CollapseNsForm()
  if match(readfile(expand("%:p")),"(ns") != -1 && (match(@%, "fugitive") == -1)
    call searchpos("(ns")
    normal j
    execute 'silent! foldclose'
    normal k
  endif
endfunction

" function! InitDB()
"   let s:db_path = '_vim-dadbod'
"   if filereadable(s:db_path)
"     execute 'DB g:db = ' . readfile(s:db_path)[0]
"   endif
" endfunction

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

" autocmd BufRead * set foldlevel=99

" autocmd BufRead *.clj[cs]\= call s:CollapseNsForm()
autocmd BufEnter *.clj[cs]\=
      \ if expand('%:p') =~ 'leihs/borrow/src' | let g:clojure_align_subforms = 1 |
      \ else | let g:clojure_align_subforms = 0 | endif

autocmd BufRead,BufNewFile *.service setfiletype dosini
autocmd FocusGained * call s:SetMode()
autocmd FocusLost * nested silent! wall

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
" autocmd VimEnter * InitDB

" autocmd User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['%p%% | %l/%L:%v'])
autocmd User AirlineAfterInit  :let g:airline_section_z = airline#section#create([])

autocmd FileType sql setlocal commentstring=--\ %s
autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni

" ABBREVIATIONS =============================================================

abbreviate bpry binding.pry

" MISC ======================================================================

" colorscheme NeoSolarized
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" colorscheme catppuccin-frappe

" search for non-ascii characters
" /[^\x00-\x7F]
" r
