_soth=( /usr/share/grc/grc.zsh /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh )
source ~/.zshenv
for tbs in {insulter,timer,thefuck}.zsh aliases functions; do source $ZDOTDIR/$tbs; done
for tbs in ${_soth[@]}; do source $tbs; done && unset _soth

# history
HISTFILE="$XDG_CACHE_HOME/history"
HISTSIZE=4096
SAVEHIST=4096

# misc
bindkey -e
stty stop undef

# prompt
__zcmdtime=1
ZLE_RPROMPT_INDENT=0
setopt PROMPT_SUBST
PROMPT='%(?..%B%F{1}%?%b%f )%M[%~]$(zsh_cmdtime )%# '

# autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# set title before command
function precmd () {
#  print -Pn -- '\e]2; %~\a'
}

# load timer before execution and print its relative title name
function preexec () {
  zsh_cmdtime_start=$(zsh_cmdtime_time)
#  print -Pn -- '\e]2; $ ' && print -n -- "${(q)1}\a"
}

case $((RANDOM % 16)) in
	2) cat $XDG_DATA_HOME/txt/konata   ;;
	4) cat $XDG_DATA_HOME/txt/niko     ;;
	6) cat $XDG_DATA_HOME/txt/ritualz  ;;
	10) print -P '%B%F{1}%m%f%b: fuck you' ;;
	15) cat $XDG_DATA_HOME/txt/pan      ;;
esac
