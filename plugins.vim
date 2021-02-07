call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'ferrine/md-img-paste.vim'
  " Snippets
  Plug '907th/vim-auto-save'
  " C++
  Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
call plug#end()

