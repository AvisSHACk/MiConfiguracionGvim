set encoding=UTF-8
set fileencoding=utf-8
set termencoding=utf-8
syntax on
hi Comment guifg=#80a0ff ctermfg=darkred
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set showmatch
set sw=4
set noswapfile
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set autoindent
set cursorline
set expandtab
set smartindent
"set noshowmode
set list listchars=tab:»-,trail:·,extends:»,precedes:« 
imap jk <Esc>
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
noremap < <gv
vnoremap > >gv
"Mapping to reload config
nmap <leader>so :source $HOME\_vimrc<CR>
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>

if has("gui_running")

  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    "set guifont=Consolas:h11:cANSI
    set guifont=Hack_Nerd_Font_Mono:h10:cANSI
    "set guifont=Source\ Code\ Pro\ for\ Powerline:h12:cANSI
    "set guifont=Source_Code_Pro_Light:h15:cANSI
    "set guifont=Liberation_Mono_Powerline:h11:cANSI
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
    "map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  endif
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"
"
call plug#begin('~/.vim/plugged')
" Temas
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
"IDE
Plug 'easymotion/vim-easymotion'
"Nerdtree
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'crusoexia/vim-monokai'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-python/python-syntax'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()


"configuracion de algunos atajos de teclado
"nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nt :NERDTreeFind<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bd :bd<cr>
nmap <leader>s <Plug>(easymotion-s2)
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

"para que emmet funcione con tab
"let g:user_emmet_expandabbr_key="<Tab>"
imap <expr> <tab> emmet#expandAbbrIntelligent("<tab>")


"dev icons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"Prettier
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Prettier :call CocAction('runCommand','prettier.formatFile')

"Resaltado de python
let g:python_highlight_all = 1




"configuracion tema airline
let g:airline_theme='tomorrow'
"configuracion tabsvim 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = '
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ">"
"let g:airline_left_sep = "►"
"let g:airline_right_sep = "<"
"let g:airline_right_sep = "◄"

let g:vim_jsx_pretty_colorful_config = 1 " default 0
" air-line
let g:airline_powerline_fonts = 1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



 "unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'



 "airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" unicode symbols
  "let g:airline_left_sep = '»'
  "let g:airline_left_sep = '▶'
  "let g:airline_right_sep = '«'
  "let g:airline_right_sep = '◀'
  "let g:airline_symbols.crypt = '🔒'
  "let g:airline_symbols.linenr = '☰'
  "let g:airline_symbols.linenr = '␊'
  "let g:airline_symbols.linenr = '␤'
  "let g:airline_symbols.linenr = '¶'
  "let g:airline_symbols.maxlinenr = ''
  "let g:airline_symbols.maxlinenr = '㏑'
  "let g:airline_symbols.branch = '⎇'
  "let g:airline_symbols.paste = 'ρ'
  "let g:airline_symbols.paste = 'Þ'
  "let g:airline_symbols.paste = '∥'
  "let g:airline_symbols.spell = 'Ꞩ'
  "let g:airline_symbols.notexists = 'Ɇ'
  "let g:airline_symbols.whitespace = 'Ξ'

  "" powerline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = '☰'
  "let g:airline_symbols.maxlinenr = ''
  "let g:airline_symbols.dirty='⚡'

"Tema Ayu
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
"
"
"set pythonhome=C:\Users\anthony\AppData\Local\Programs\Python
"set pythondll=C:\Users\anthony\AppData\Local\Programs\Python\Python39\python39.dll
"let g:UltiSnipsExpandTrigger="<C-l>"

"let g:vimsence_client_id = '799448079320612955'
"let g:vimsence_small_text = 'Vim'
"let g:vimsence_small_image = 'Vim'
"let g:vimsence_editing_details = 'Editing: {}'
"let g:vimsence_editing_state = 'Working on: {Anthony}'
"let g:vimsence_file_explorer_text = 'In NERDTree'
"let g:vimsence_file_explorer_details = 'Looking for files'
"let g:vimsence_custom_icons = {'filetype': 'iconname'}
