" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set tabstop=4     
set shiftwidth=4 
set softtabstop=4     
set smarttab       
set expandtab        
set autoindent
set cindent

" -----------------------------------------------------------------------------
" | Mappings |
" -----------------------------------------------------------------------------
map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=-javascript,-html, .<CR>


iabbrev codeeval ifstream file;<CR>file.open(argv[1])<CR>while (!file.eof()) {<CR>getline(file, lineBuffer);<CR>if (lineBuffer.length() == 0)<CR>continue; <CR>else <CR>{<CR><CR>}<CR>}<CR>
