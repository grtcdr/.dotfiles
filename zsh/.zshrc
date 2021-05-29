# Export locale
export LANG=en_US.UTF-8
# Set a custom manpager using 'bat'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Export the EDITOR 
export EDITOR="nvim"
# Alacritty theme directory 
export T_ALACRITTY="$HOME/.config/alacritty/themes/"
# Autocomplete aliases
setopt COMPLETE_ALIASES
# Save only the last 10000 commands 
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

autoload -Uz compinit
compinit -d ~/.zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' menu select

# Opens the extensions with the provided editor
alias -s {css,js,html,md,rs}=code

# When changing directories, the content
# of the directory will be displayed
function cdls { builtin cd "$@" && exa -F }

# Source my aliases 
for f in $HOME/.config/aliases/*; do source $f; done
# Source a few zsh extensions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Source my theme
source $HOME/.zsh/themes/grtcdr.zsh
# We all have them, okay? 
source $HOME/.config/.secrets

# Key bindings
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey "^U" kill-whole-line
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^W" backward-kill-word

macchina
