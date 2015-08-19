#/usr/bin/bash
SRC=`pwd`
cd $HOME 
ln -s ${SRC}/_vim .vim
ln -s ${SRC}/_vimrc .vimrc
ln -s ${SRC}/_screenrc .screenrc
ln -s ${SRC}/_ctags .ctags
ln -s ${SRC}/bin bin
