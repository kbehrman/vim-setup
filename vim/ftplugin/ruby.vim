set tabstop=2     
set shiftwidth=2 
set softtabstop=2     

compiler rspec

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=+ruby,-C,-C++,-vim,-make,-PHP,-HTML,-SQL .<CR>
" SyntasticEnable ruby
"g:syntastic_enable_signs=1
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*


match WarningMsg '\%>120v.\+' " Show long lines

iabbrev ruby-debug require 'ruby-debug'; debugger; #TODO Take out
iabbrev sefl self
iabbrev payattention require 'ruby-debug';debugger;<CR> #PAY ATTENTION: #TODO Take out
iabbrev puts'' puts '--------------------------------------------'<CR>puts '--------------------------------------------'<CR>puts '--------------------------------------------'<CR>puts '--------------------------------------------'
iabbrev putserr puts '--------------------------------------------'<CR>puts '--------------------------------------------'<CR>puts err<CR>pp err.backtrace<CR>puts '--------------------------------------------'<CR>puts '--------------------------------------------'
