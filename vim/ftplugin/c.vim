" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set tabstop=4     
set shiftwidth=4 
set softtabstop=4     
set smarttab       
set expandtab        
set cindent

" -----------------------------------------------------------------------------
" | Mappings |
" -----------------------------------------------------------------------------
map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=-javascript,-html, .<CR>
