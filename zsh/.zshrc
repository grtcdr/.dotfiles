# grtcdr's confidential, top secret, nonpublic, esoteric zsh config file 
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

export LOCAL_BIN="$HOME/.local/bin"
[ -d "$LOCAL_BIN" ] && PATH+=$LOCAL_BIN
export CARGO_DIR="$HOME/.cargo/bin"
[ -d "$CARGO_DIR" ] && PATH+=$CARGO_DIR 

# oh-my-zsh installation path
export ZSH="/home/grtcdr/.oh-my-zsh"

ZSH_THEME="grtcdr"

CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# DISABLE_UPDATE_PROMPT="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# ZSH_CUSTOM=/path/to/new-custom-folder

#HIST_STAMPS="dd/mm/yyyy"

plugins=(
sudo
fancy-ctrl-z
)

# If vim is installed, editor will be set to vim, else set editor to nano
[ -x /usr/bin/vim ] && export EDITOR="vim" && export VISUAL="vim" || export EDITOR="nano"
[ -x /usr/bin/konsole ] && export TERM="konsole-256color"
function cdls { builtin cd "$@" && exa }

export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.config/.aliasrc" ] && source ~/.config/.aliasrc
[ -f "$HOME/.config/.secrets" ] && source ~/.config/.secrets
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
