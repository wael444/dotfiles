source ~/.zshenv
for tbs in {insulter,timer}.zsh aliases; do source $ZDOTDIR/$tbs; done
source /usr/share/grc/grc.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -e
stty stop undef
setopt PROMPT_SUBST
setopt interactivecomments
PROMPT='%(?..%B%F{1}%?%b%f )%M[%~]$(zsh_cmdtime )%# '

# autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# set title before command
function precmd() {
#  print -Pn -- '\e]2; %~\a'
}

# load timer before execution and print its relative title name
function preexec() {
  zsh_cmdtime_start=$(zsh_cmdtime_time)
#  print -Pn -- '\e]2; $ ' && print -n -- "${(q)1}\a"
}

# numbers start from 0
case $((RANDOM % 7)) in
	3) cat $(printf "%s\n" $XDG_DATA_HOME/txt/* | sort -R | head -1) ;;
	4) print -P '%B%F{1}%m%f%b: kys' ;;
	5) print -P '%B%F{1}%m%f%b: what unspeakable shit are we going to do today?' ;;
	6) print -P '%B%F{1}%m%f%b: fuck you' ;;
esac
