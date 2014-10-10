# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LANG=zh_CN.UTF-8

PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[01;31m\]@\[\033[01;36m\]\H\[\033[01;31m\]:\[\e[33m\]\w\[\e[0m\]\n\$ "
export PS1

PAT=H/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/usr/share/baidu/bin:$PATH

PATH=$HOME/bin:$PATH
PATH=$HOME/usr/bin:$PATH
LOCAL=$HOME/local
PATH=$LOCAL/bin:$PATH
PATH=$LOCAL/tcl/bin:$PATH
PATH=$LOCAL/expect/bin:$PATH
PATH=$LOCAL/ctags/bin:$PATH
PATH=$LOCAL/mfs/bin:$PATH
PATH=$LOCAL/php/bin:$PATH
PATH=$LOCAL/cronolog/sbin:$PATH
PATH=$LOCAL/apache/bin:$PATH
PATH=$LOCAL/mysql/bin:$PATH
PATH=$LOCAL/subversion/bin:$PATH
PATH=$LOCAL/libmcrypt/bin:$PATH
PATH=$LOCAL/vim/bin:$PATH
PATH=$LOCAL/mysql/bin:$PATH
PATH=$LOCAL/screen/bin:$PATH
PATH=$LOCAL/cmake/bin:$PATH
PATH=$LOCAL/mysql/bin:$PATH
export PATH

LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$HOME/usr/lib/mysql/:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$LOCAL/libmcrypt/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$LOCAL/mhash/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$LOCAL/mysql/lib/mysql:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$LOCAL/samba/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

INCLUDE_PATH=$LOCAL/libmcrypt/include:$INCLUDE_PATH
INCLUDE_PATH=$LOCAL/mhash/include:$INCLUDE_PATH
export INCLUDE_PATH

MYSQL_DATA=$HOME/var/mysql/data/
MYSQL_LOGS=$HOME/var/mysql/logs/
MYSQL_SOCK=$HOME/var/mysql/mysql.sock
MYSQL_CONF=$LOCAL/mysql/my.cnf
export MYSQL_DATA
export MYSQL_LOGS
export MYSQL_SOCK
export MYSQL_CONF
