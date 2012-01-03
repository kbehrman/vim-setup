" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set tabstop=4     
set shiftwidth=4 
set softtabstop=4     


map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=+javascript,-C,-C++,-vim,-make .<CR>

set omnifunc=javascriptcomplete#CompleteJS
let g:js_indent="$VIMHOME/indent/javascript.vim"

SyntasticEnable JAVASCRIPT
match WarningMsg '\%>120v.\+' " Show long lines
