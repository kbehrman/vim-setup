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
compiler pylint  
"set tags+=~/.vim/tags/python.vim 
set omnifunc=pythoncomplete#Complete 
"set complete+=k~/.vim/syntax/python.vim 
set complete+=k~/.vim/bundle/syntastic/syntax_checkers/python.vim
let g:pylint_onwrite = 1 
let g:pylint_cwindow = 0

" -----------------------------------------------------------------------------
" | Mappings |
" -----------------------------------------------------------------------------
map <Leader><F2> :Pylint<CR><C-l>
map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=-javascript,-html,-C,-C++,-vim,-make .<CR>
"map <F9> :!/usr/bin/ctags  --c++-kinds=+p --fields=+iaS --extra=+q --languages=+python -f=~/.vim/tags/python.vim /usr/lib/python2.6 .<CR>
map <Leader> <F9> :call Pep8()<CR>

match WarningMsg '\%>120v.\+' " Show long lines
"SyntasticDisable python



" -----------------------------------------------------------------------------
" | Abbreviations |
" -----------------------------------------------------------------------------
iabbrev ifmain if __name__ == '__main__':
iabbrev pdb import pdb; pdb.set_trace() #TODO Take out
iabbrev ipdb import ipdb; ipdb.set_trace() #TODO Take out
iabbrev inspectframes  import inspect;frames=[x[1:] for x in inspect.getouterframes(inspect.currentframe())];for f in frames: print f;pass #TODO takeout
iabbrev sefl self
iabbrev slef self
iabbrev __inti__ __init__
iabbrev NOne None
iabbrev tempalte template
iabbrev codeeval import sys<CR><CR>with open(sys.argv[1], 'r') as open_file:<CR>for test in open_file:<CR>test = test.strip()<CR>if test:

