function! NumberToggle()
  "  Toggle between showing/hidding the numbers.
  if(&relativenumber == 1||&number == 1)
    set norelativenumber
    set nonumber
  else
    if version >= 703
      set relativenumber
    endif
    set number
  endif
endfunc

"  Map Ctrl+n to NumberToggle
nnoremap <C-n> :call NumberToggle()<cr>
