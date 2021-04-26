# Export locale
export LANG=en_US.UTF-8
# Set a custom manpager using 'bat'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Export the EDITOR 
export EDITOR="nvim"
# Alacritty theme directory 
export T_ALACRITTY="$HOME/.config/alacritty/themes/"
# Save only the last 10000 commands 
export SAVEHIST=10000
# Dump the history in the specified path
export HISTFILE=~/.zsh/zsh_history
# Autocomplete aliases
setopt COMPLETE_ALIASES
# Ignore duplicate commands
setopt HIST_IGNORE_DUPS
# Reduce whitespace
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

# Run macchina!
# Minimal
#macchina -c Yellow -C Yellow --no-box --no-ascii --no-separator --no-bar-delimiter --bar
# Favorite
macchina -DrbKpt Boron -X Kernel Packages Uptime ProcessorUsage Battery Memory --no-box
# Rusty
#macchina -t Hydrogen -X DesktopEnvironment Packages Uptime Terminal -U -c Green -C blue --box-title " 🦀 Rusty "
# Bars
#macchina -X ProcessorUsage Memory Battery -K -D -b --no-ascii --no-box -c blue
