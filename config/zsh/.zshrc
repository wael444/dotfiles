# source $HOME/.zshenv
source $ZDOTDIR/cmds.zsh
source $ZDOTDIR/cmdtime.zsh
source $ZDOTDIR/cmdnotfound.zsh
source /usr/share/grc/grc.zsh

bindkey -e
stty stop undef

setopt PROMPT_SUBST
setopt interactivecomments
autoload -U compinit
zmodload zsh/complist
zstyle ':completion:*' menu select

__cmdtime=1
_comp_options+=(globdots)
ZLE_RPROMPT_INDENT=0
__title="$TERM:%n@%m[%~]"
PROMPT='%(?..%B%F{1}%?%b%f )%B%~ $(_cmdtime f)%#%b '

compinit

function precmd()  { print -Pn -- '\e]2;${__title}\a' }
function preexec() {
	__scmdtime="$(_cmdtime b)"
	print -Pn -- '\e]2;${__title}%% ${(q)1}\a'
}

case $((RANDOM % 16)) in
	3) cat $(printf "%s\n" $XDG_DATA_HOME/txt/* | sort -R | head -1) ;;
	2) sf ;;
	4) print -P '%B%F{1}%m%f%b: kys' ;;
	6) print -P '%B%F{1}%m%f%b: fuck you' ;;
esac
