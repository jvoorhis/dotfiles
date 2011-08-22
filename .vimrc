set nocompatible
set background=dark
colorscheme solarized
syntax on

if has('gui_running')
  set guioptions-=T
  set guioptions-=L
  set guioptions-=l
  set guioptions-=r
  set guifont=Terminus:h14
end

set mouse=a
set clipboard=unnamed

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
if has("autocmd")
  filetype plugin indent on
endif

set ruler
set number
set incsearch
set virtualedit=all
set visualbell
set fileencodings=ucs-bom,utf-8,default,latin1
set wildmenu
set wildignore+=*.~

" Text options
set wrap
set linebreak

" Search options
set ignorecase
set grepprg=ack

au BufReadPost Gemfile set syntax=ruby
au BufReadPost Gemfile.lock set syntax=ruby
au BufReadPost config.ru set syntax=ruby
au BufReadPost *.json set syntax=JavaScript
au BufReadPost SConstruct set syntax=python
