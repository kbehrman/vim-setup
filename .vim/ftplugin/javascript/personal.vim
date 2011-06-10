" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set tabstop=4     
set shiftwidth=4 
set softtabstop=4     
set smarttab       
set expandtab        



set omnifunc=javascriptcomplete#CompleteJS
map <F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=+javascript,-C,-C++,-vim,-make .<CR>
SyntasticEnable javascript
