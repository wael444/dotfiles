export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/scripts"

export EDITOR="nvim"
export VISUAL="nvim"
export PASTEL_COLOR_MODE=24bit
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
# truetype:interpreter-version=35 # Classic mode (default in 2.6)
# truetype:interpreter-version=38 # Infinality mode
# truetype:interpreter-version=40 # Minimal mode (default in 2.7)

# paths
export LESSHISTFILE="-"
export GOPATH="$XDG_DATA_HOME/go"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export XRESOURCES="$XDG_CONFIG_HOME/X11/xresources"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export PATH="$PATH:$CARGO_HOME/bin:$XDG_DATA_HOME/npm/bin:$GOPATH/bin"

export FZF_DEFAULT_COMMAND="find -L"
export FZF_DEFAULT_OPTS='
  --color fg:8,bg:0,hl:7,fg+:2,bg+:0,hl+:4
  --color info:2,prompt:4,spinner:4,pointer:8,marker:7
'
