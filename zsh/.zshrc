export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export LANG=en_US.UTF-8
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR="nvim"
export VISUAL="nvim"
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt COMPLETE_ALIASES
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
for f in $HOME/.config/aliases/*; do . $f; done

# Source a few zsh extensions
. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source my theme
. "$HOME/.zsh/themes/grtcdr.zsh"

# We all have them, okay? 
. "$HOME/.config/.secrets"

# Key bindings
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey "^U" kill-whole-line
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^W" backward-kill-word

macchina
