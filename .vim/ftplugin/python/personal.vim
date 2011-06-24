" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set tabstop=4     
set shiftwidth=4 
set softtabstop=4     
set smarttab       
set expandtab        


" -----------------------------------------------------------------------------
" | Tags and compiling |
" -----------------------------------------------------------------------------
"compiler pylint  
"set tags+=~/.vim/tags/python.vim 
set omnifunc=pythoncomplete#Complete 
set complete+=k~/.vim/syntax/python.vim 
"let g:pylint_onwrite = 1 

" -----------------------------------------------------------------------------
" | Mappings |
" -----------------------------------------------------------------------------
"map <F2> :Pylint<CR><C-l>
map <F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=-javascript,-html,-C,-C++,-vim,-make .<CR>
"map <F9> :!/usr/bin/ctags  --c++-kinds=+p --fields=+iaS --extra=+q --languages=+python -f=~/.vim/tags/python.vim /usr/lib/python2.6 .<CR>

SyntasticEnable python
