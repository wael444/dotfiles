export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/bin"

# others
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export HISTSIZE=4096
export SAVEHIST=4096
export BROWSER="firefox"
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export PASTEL_COLOR_MODE=24bit
# truetype:interpreter-version=35 # Classic mode (default in 2.6)
# truetype:interpreter-version=38 # Infinality mode
# truetype:interpreter-version=40 # Minimal mode (default in 2.7)
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __GL_THREADED_OPTIMIZATION=1
export __GL_SHADER_DISK_CACHE=1
# PROTON_HIDE_NVIDIA_GPU=0 PROTON_ENABLE_NVAPI=1
export LESSHISTFILE="-"
export FZF_DEFAULT_COMMAND='fd -t f -HL'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--color fg:8,bg:-1,fg+:bold:-1,bg+:-1,query:-1,prompt:bold:-1,pointer:bold:-1,info:italic:15,spinner:bold:4'

# paths
export GOPATH="$XDG_DATA_HOME"/go
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export HISTFILE="$XDG_CACHE_HOME"/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export ANDROID_HOME="$XDG_DATA_HOME"/android
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export MBSYNCRC="$XDG_CONFIG_HOME"/mbsync/config
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export XRESOURCES="$XDG_CONFIG_HOME"/X11/xresources
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc-2.0
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

export PATH="$PATH:$CARGO_HOME/bin:$XDG_DATA_HOME/npm/bin:$GOPATH/bin"
