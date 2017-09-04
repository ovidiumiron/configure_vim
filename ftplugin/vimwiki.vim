" remove the white space in .md files
autocmd BufWritePre *.wiki :%s/\s\+$//e

" enable for local buffer the spelling
setlocal spell spelllang=en_us
"
" turn on word completation
setlocal complete+=kspell
"
setlocal textwidth=79
