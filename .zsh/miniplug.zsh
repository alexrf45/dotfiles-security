#miniplug zsh
source "$HOME/.miniplug/plugins/miniplug.zsh"

export MINIPLUG_HOME="$HOME/.miniplug/plugins"

# Define a plugin
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zsh-users/zsh-completions'

# Source plugins
miniplug load

