set nocompatible
filetype off

call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader="," " be kind to my fingers

set autoread      " reload files changed on disk
set nobackup      " do not keep backups after close
set nowritebackup " do not keep backups while working
set noswapfile    " don't keep swap files either
set fileformats=unix,dos,mac " line endings are still a thing?
set encoding=utf-8 nobomb " People still use latin1?
set hidden        " allow switching buffers without saving

set mouse=a       " Allow mouse to interact with cursor, windows, tabs, etc.
set clipboard=unnamed " Yank into system clipboard

set number
set ruler
set cursorline
set cursorcolumn

" File browser
map <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.svn$', '\.DS_Store$', '\.git$' ]

set grepprg=ack\ -aH\ --nocolor " ack is better

autocmd QuickfixCmdPost grep copen " auto-open the quick fix list


" syntax checking with ruby select by rbenv
let g:syntastic_ruby_exec='~/.rbenv/shims/ruby'

" misc gui options
if has("gui_running")
  set background=dark
  " a: visual-mode autoselect (takes over the OS selection process)
  set guioptions+=a
  " A: autoselect for modeless selection
  set guioptions+=A
  " c: use console dialogs for simple choices
  set guioptions+=c
  " g: grey-out non-active menu items
  set guioptions+=g
  " m: show system menu bars
  set guioptions+=m
  " t: include tear-off menu items
  set guioptions+=t

  " e: don't use gui tabs, they change the height of the window
  set guioptions-=e
  " T: system toolbar
  set guioptions-=T
  " r: right-hand scrollbar
  set guioptions-=r
  " l: left-hand scrollbar
  set guioptions-=l
  " L: left-hand scrollbar when vertically-split window
  set guioptions-=L

  set fuoptions=maxvert,maxhorz
endif

colorscheme solarized
let g:solarized_menu=0
let g:solarized_contrast="normal"
let g:solarized_visibility="high"

" Wildmenu
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" Cursor behavior
set nostartofline
set scrolloff=5
set sidescrolloff=5

" Text formatting
set autoindent
set smartindent
set nowrap
set tabstop=2 " Soft, 2-space tabs
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab
set textwidth=80
set list " whitespace highlighting
set listchars=tab:»\ ,trail:·,precedes:<,extends:>

" Folding
autocmd BufNewFile,BufRead * set foldmethod=indent " fold code by indentation
set foldlevel=99 " open by default
set foldignore=
