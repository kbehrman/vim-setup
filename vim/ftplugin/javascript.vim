" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set tabstop=2     
set shiftwidth=2 
set softtabstop=2     


map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=+javascript,-C,-C++,-vim,-make .<CR>

set omnifunc=javascriptcomplete#CompleteJS
let g:js_indent="$VIMHOME/indent/javascript.vim"

SyntasticCheck JAVASCRIPT
let g:syntastic_javascript_checkers = ['eslint']
match WarningMsg '\%>120v.\+' " Show long lines
