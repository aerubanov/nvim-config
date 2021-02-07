let g:auto_save = 0
let g:auto_save_events = ["InsertLeave", "TextChanged", "TextChangedI", "CompleteDone"]
augroup ft_markdown
  au!
  au FileType markdown let b:auto_save = 1
augroup END
augroup ft_tex
  au!
  au FileType tex let b:auto_save = 1
augroup END

