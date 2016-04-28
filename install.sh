#/usr/bin/bash
SRC=`pwd`
cd $HOME 
ln -sf ${SRC}/_vim      ${HOME}/.vim
ln -sf ${SRC}/_vimrc    ${HOME}/.vimrc
ln -sf ${SRC}/_screenrc ${HOME}/.screenrc
ln -sf ${SRC}/_ctags    ${HOME}/.ctags
ln -sf ${SRC}/_gitconfig ${HOME}/.gitconfig
ln -sf ${SRC}/bin       ${HOME}/bin
ln -sf ${SRC}/_bashrc   ${HOME}/.bashrc_addition
ln -sf ${SRC}/_gitignore   ${HOME}/.gitignore

echo "Done!\r\n";
