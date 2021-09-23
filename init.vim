let mapleader=","                   " <leader> key
runtime plugins.vim
runtime functions.vim
runtime statusline.vim
runtime coc.vim
"Config Section
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

set relativenumber                          " line numbers
set nu rnu
syntax enable                       " syntax processing
set cursorline                      " highlinght current line
set clipboard=unnamedplus               " clipboard sharing
set autochdir
" Tab settings
set expandtab                       " spaces instead of tabs
set smarttab                        " tab in the beginning of the line acts like shift
set tabstop=4                       " <tab>=n<space>, read mode
set shiftwidth=4                    " the size of an indent
set softtabstop=4                   " <tab>=n<space>, edit mode
set backspace=indent,eol,start      " make backspace work in usual way
set termguicolors
" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:python_host_prog = "/usr/bin/python3"
let g:python3_host_prog = "/usr/bin/python3"
let g:netrw_liststyle = 3
let g:netrw_keepdir = 0
set statusline=%F
set autowriteall

" These "Pytest Support" work well when Caps Lock is mapped to Ctrl
nmap <silent> <leader>tn :TestNearest<CR>
" In a test file runs the test nearest to the cursor, otherwise runs the last nearest test. In test frameworks that don't support line numbers it will polyfill this functionality with regexes.
nmap <silent> <leader>tf :TestFile<CR>
" In a test file runs all tests in the current file, otherwise runs the last file tests.
nmap <silent> <leader>ts :TestSuite<CR>
" Runs the whole test suite (if the current file is a test file, runs that framework's test suite, otherwise determines the test framework from the last run test).
nmap <silent> <leader>tl :TestLast<CR>
" Runs the last test.
nmap <silent> <leader>tg :TestVisit<CR>
" Visits the test file from which you last run your tests (useful when you're trying to make a test pass, and you dive deep into application code and close your test buffer to make more space, and once you've made it pass you want to go back to the test file to write more tests).
