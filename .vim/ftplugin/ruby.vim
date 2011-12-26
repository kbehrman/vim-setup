set tabstop=2     
set shiftwidth=2 
set softtabstop=2     

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

map <F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=+ruby,-C,-C++,-vim,-make .<CR>
" SyntasticEnable ruby
match WarningMsg '\%>120v.\+' " Show long lines
