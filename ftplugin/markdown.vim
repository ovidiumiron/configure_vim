" remove the white space in .md files
autocmd BufWritePre *.md :%s/\s\+$//e
" enable for local buffer the spelling
setlocal spell spelllang=en_us
" turn on word completation
setlocal complete+=kspell
