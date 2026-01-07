# General ZSH
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTSIZE=5000000
SAVEHIST=5000000

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt SHARE_HISTORY             # Share history between all sessions.

# hypr symlink
if [[ ! -f ~/.config/hypr/hyprland.conf ]]; then
    case "$hostname" in
        rivendell)
            ln -s ~/.config/hypr/hyprland-rivendell.conf ~/.config/hypr/hyprland.conf
        ;;
        shire)
            ln -s ~/.config/hypr/hyprland-shire.conf ~/.config/hypr/hyprland.conf
        ;;
        *)
            echo "UNHANDLED HOSTNAME"
        ;;
    esac
fi

# Key Binds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# Starship
eval "$(starship init zsh)"

# Coding stuff
source /usr/share/nvm/init-nvm.sh

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh