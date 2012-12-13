call pathogen#infect()
syntax on
filetype plugin indent on

set nobackup      " do not keep backups after close
set nowritebackup " do not keep backups while working
set noswapfile    " don't keep swap files either

set clipboard=unnamed

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader="," " be kind to my fingers

set hidden " allow switching buffers without saving

map <leader>n :NERDTreeToggle<CR>

set grepprg=ack\ -aH\ --nocolor " ack is better

autocmd QuickfixCmdPost grep copen " auto-open the quick fix list

autocmd BufNewFile,BufRead * set foldmethod=indent " fold code by indentation

"set backgroud=light
colorscheme solarized

" syntax checking
let g:syntastic_ruby_exec='~/.rbenv/shims/ruby'
