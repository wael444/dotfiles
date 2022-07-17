. /etc/profile
. $HOME/.profile 

case $0 in
	mksh)
		. /etc/skel/.mkshrc
		PS1='${PWD//$HOME/\~} $ '
		HISTFILE=${XDG_CACHE_HOME:=$HOME/.cache}/mksh_history
		HISTSIZE=8192
	;;
	oksh)
		PS1='\w $ '
		HISTFILE=${XDG_CACHE_HOME:=$HOME/.cache}/oksh_history
		HISTSIZE=8192
	;;
	dash) 
		PS1='$PWD $ '
	;;
esac

. $HOME/.config/sh/aliasrc
. $HOME/.config/sh/funcrc

set -o emacs

# vim: ft=bash
