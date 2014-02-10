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
mkdir -p indentanything/plugin
pushd indentanything/plugin
curl 'http://www.vim.org/scripts/download_script.php?src_id=10228' >  indentanything.tar.gz
tar zxvf indentanything.tar.gz
popd

git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/corntrace/bufexplorer.git
git clone https://github.com/ecomba/vim-ruby-refactoring.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/tpope/vim-surround.git
mkdir -p pythonsyntax/syntax
curl 'http://www.vim.org/scripts/download_script.php?src_id=14268' > pythonsyntax/syntax/python3.0.vim
cp -rf /Users/kennedy/src/vim-latex/vim-latex-1.8.23-20110214.1049-git089726a vim-latex
mkdir -p vim-pep8/ftplugin
curl http://www.vim.org/scripts/download_script.php?src_id=13395 > vim-pep8/ftplugin/python_pep8.vim

mkdir vcscommand
pushd vcscommand
mkdir plugin
mkdir doc
curl http://www.vim.org/scripts/download_script.php?src_id=17031 > vcscommand.zip
tar zxvf vcscommand.zip
popd 

git clone git://github.com/AndrewRadev/linediff.vim.git ~/.vim/bundle/linediff 

git clone git://github.com/tpope/vim-fugitive.git
#hg clone https://bitbucket.org/tcoopman/ropevim-pathogen
#mkdir ropevim
#pushd ropevim
#curl http://pypi.python.org/packages/source/r/ropevim/ropevim-0.3-rc.tar.gz#md5=1564956791a1f2e8b895c5b312294549 > ropevim-0.3-rc.tar.gz
#tar -vxf ropevim-0.3-rc.tar.gz
#mkdir plugin
#mv ropevim-0.3-rc/ropevim.vim plugin/
#popd
#git clone https://github.com/rygwdn/ropevim-helper.git
