# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# -----------------------
# History settings
# -----------------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY       # Append history instead of overwriting
setopt SHARE_HISTORY        # Share history between sessions
setopt HIST_IGNORE_DUPS     # Ignore duplicate commands

# -----------------------
# Tab behavior: complete files/folders OR accept autosuggestion
# -----------------------
accept-or-complete() {
  if [[ $BUFFER == $autosuggest_buffer ]]; then
    zle autosuggest-accept
  else
    zle expand-or-complete
  fi
}
zle -N accept-or-complete
bindkey '^I' accept-or-complete

# -----------------------
# Enable menu completion
# -----------------------
setopt MENU_COMPLETE
setopt AUTO_LIST
setopt AUTO_MENU

# ----------

