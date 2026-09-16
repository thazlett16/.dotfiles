# General ZSH
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTSIZE=5000000
SAVEHIST=5000000

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt SHARE_HISTORY             # Share history between all sessions.

# Key Binds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

bindkey -s "^f" "tmux-sessionizer\n"

# Aliases
alias ts="tmux-sessionizer"
alias gfo="git fetch origin --recurse-submodules=no --progress --prune"
alias gbl="git branch --list --verbose --all"
# Aliases end

# Starship
eval "$(starship init zsh)"
# Starship end

# Add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"
# .local/bin end

# nvm
if [[ -d /usr/share/nvm ]]; then
  source /usr/share/nvm/init-nvm.sh
fi
# nvm end

# Vite+ bin (https://viteplus.dev)
if [[ -f ~/.config/vite-plus/env ]]; then
  source ~/.config/vite-plus/env
fi
# Vite+ end

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# autosuggestions
if [[ -d /usr/share/zsh/plugins/zsh-autosuggestions ]]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# autosuggestions end

# syntax highlighting
if [[ -d /usr/share/zsh/plugins/zsh-syntax-highlighting ]]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
# syntax highlighting end
