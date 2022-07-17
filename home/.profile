export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'
export BROWSER="firefox"

# __GL_THREADED_OPTIMIZATION=1
# __GL_SHADER_DISK_CACHE=1
# PROTON_HIDE_NVIDIA_GPU=0 
# PROTON_ENABLE_NVAPI=1

export FZF_DEFAULT_OPTS="--color=fg:7,bg:-1,preview-bg:0,preview-fg:-1,hl:4\
,fg+:regular:italic:15,bg+:-1,gutter:-1,hl+:4,pointer:2,prompt:4 \
--pointer='*' --preview-window=right,40%,border-none,wrap,nofollow,nocycle --no-info"

export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc-2.0
export ENV="$HOME"/.kshrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

export PATH="$PATH:$HOME/.local/bin:$CARGO_HOME/bin:$GOPATH/bin"
