"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE BROWSING
" Toggle File browsing

function! ToggleNetrw()
    if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore 30
      let t:expl_buf_num = bufnr("%")
  endif
endfunction

" Add your own mapping. For example:
noremap <silent> <C-n> :call ToggleNetrw()<CR>  

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

