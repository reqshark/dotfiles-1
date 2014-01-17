# run script from the project dir
ln -fsv $(pwd)/bash_profile ~/.bash_profile
ln -fsv $(pwd)/tm_properties ~/.tm_properties
rm -v ~/.git_template
ln -sv $(pwd)/git_template ~/.git_template
ln -fsv $(pwd)/gitconfig ~/.gitconfig
ln -fsv $(pwd)/hgrc ~/.hgrc
ln -fsv $(pwd)/hgignore_global ~/.hgignore_global
ln -fsv $(pwd)/gitignore_global ~/.gitignore_global
ln -fsv $(pwd)/gemrc ~/.gemrc
