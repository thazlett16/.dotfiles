# General ZSH
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTSIZE=5000000
SAVEHIST=5000000

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt SHARE_HISTORY             # Share history between all sessions.

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Coding stuff
source /usr/share/nvm/init-nvm.sh
