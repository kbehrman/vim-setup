rm -rf L9
rm -rf bufexplorer
rm -rf indentanything
rm -rf nerdtree
rm -rf vim-pylint
rm -rf pythoncomplete
rm -rf pythonsyntax
rm -rf rubycomplete
rm -rf supertab
rm -rf syntastic
rm -rf taglist.vim
rm -rf vim-fuzzyfinder
rm -rf vim-irblack
rm -rf vim-ruby-refactoring
rm -rf vim-web-indent
rm -rf vim-latex
rm -rf vcscommand
rm -rf vim-surround
rm -rf linediff
rm -rf taskpaper.vim
#rm -rf ropevim
#rm -rf ropevim-pathogen


git clone https://github.com/vim-scripts/L9.git
hg clone https://bitbucket.org/ns9tks/vim-fuzzyfinder 
mkdir -p rubycomplete/ftplugin/ruby
curl 'http://www.vim.org/scripts/download_script.php?src_id=6203' > rubycomplete/ftplugin/ruby/rubycomplete.vim
git clone https://github.com/scrooloose/syntastic.git
git clone git@github.com:wgibbs/vim-irblack.git
# this brings in more than pylint, but pylint is fixed for newer pylint
git clone https://github.com/JoseBlanca/vim-for-python.git
mkdir -p pylint/compiler
mv vim-for-python/vim/compiler/pylint.vim pylint/compiler/
rm -rf vim-for-python
#git clone https://github.com/rygwdn/vim-pylint.git

mkdir -p pythoncomplete/autoload
curl 'http://www.vim.org/scripts/download_script.php?src_id=10872' > pythoncomplete/autoload/pythoncomplete.vim
git clone 'https://github.com/garbas/vim-web-indent.git' 
#mkdir -p indentanything/plugin
#pushd indentanything/plugin
#curl 'http://www.vim.org/scripts/download_script.php?src_id=10228' >  indentanything.tar.gz
#tar zxvf indentanything.tar.gz
#popd

git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/corntrace/bufexplorer.git
git clone https://github.com/ecomba/vim-ruby-refactoring.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/tpope/vim-surround.git
mkdir -p pythonsyntax/syntax
curl 'http://www.vim.org/scripts/download_script.php?src_id=14268' > pythonsyntax/syntax/python3.0.vim
#cp -rf /Users/kennedy/src/vim-latex/vim-latex-1.8.23-20110214.1049-git089726a vim-latex
mkdir -p vim-pep8/ftplugin
curl https://www.vim.org/scripts/download_script.php?src_id=14366 > vim-pep8/ftplugin/python_pep8.vim

mkdir vcscommand
pushd vcscommand
mkdir plugin
mkdir doc
curl http://www.vim.org/scripts/download_script.php?src_id=17031 > vcscommand.zip
tar zxvf vcscommand.zip
popd 

git clone git://github.com/AndrewRadev/linediff.vim.git ~/.vim/bundle/linediff 

#hg clone https://bitbucket.org/tcoopman/ropevim-pathogen
#mkdir ropevim
#pushd ropevim
#curl http://pypi.python.org/packages/source/r/ropevim/ropevim-0.3-rc.tar.gz#md5=1564956791a1f2e8b895c5b312294549 > ropevim-0.3-rc.tar.gz
#tar -vxf ropevim-0.3-rc.tar.gz
#mkdir plugin
#mv ropevim-0.3-rc/ropevim.vim plugin/
#popd
#git clone https://github.com/rygwdn/ropevim-helper.git
git clone https://github.com/ludovicchabant/vim-gutentags.git
# git clone https://github.com/elixir-lang/vim-elixir.git 


rm -rf taskpaper.vim;git clone https://github.com/davidoc/taskpaper.vim

rm -rf vim-terraform;git clone https://github.com/hashivim/vim-terraform.git
rm -rf vim-vagrant;git clone https://github.com/hashivim/vim-vagrant.git
rm -rf vim-yaml;git clone git@github.com:stephpy/vim-yaml.git
rm -rf LaTeX-Box;git clone git://github.com/LaTeX-Box-Team/LaTeX-Box.git

rm -rf vim-fugitive;git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

rm -rf vim-misc;git clone git@github.com:xolox/vim-misc.git
rm -rf vim-notes;git clone git@github.com:xolox/vim-notes.git
rm -rf vimwiki;git clone https://github.com/vimwiki/vimwiki.git
