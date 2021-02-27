# grtcdr's confidential, top secret, nonpublic, esoteric zsh config file 
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH

# oh-my-zsh installation path
export ZSH="/home/grtcdr/.oh-my-zsh"
export LANG=en_US.UTF-8
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
[ -x /usr/bin/vim ] && export EDITOR="vim" || export EDITOR="nano"

ZSH_THEME="afowler"
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
# HIST_STAMPS="dd/mm/yyyy"
alias -s {css,js,html,md}=code

plugins=(
fancy-ctrl-z
sudo
)

function cdls { builtin cd "$@" && exa -F }

# Source some files
source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.config/.secrets" ] && source ~/.config/.secrets
[ -d "$HOME/.config/aliases" ] && for f in $HOME/.config/aliases/*; do source $f; done
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

mac -S 2 -p -r
