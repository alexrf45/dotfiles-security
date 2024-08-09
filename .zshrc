setopt autocd extendedglob

#history config
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
HIST_STAMPS="mm/dd/yyyy"

setopt HIST_IGNORE_SPACE  # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS   # Don't save duplicate lines
setopt SHARE_HISTORY      # Share history between sessions


export EDITOR=vim
export TERM='xterm-256color'
export VISUAL=vim


#turn off beep
unsetopt beep

#source aliases and env
source "$HOME/.zprofile"

for file in $HOME/.zsh/*; do
    source "$file"
done

fpath=(/tmp/zsh-completions/src $fpath)



#persistant ssh agent
eval $(ssh-agent) &> /dev/null

ssh-add ~/.ssh/lab >/dev/null 2>&1
ssh-add ~/.ssh/home >/dev/null 2>&1
ssh-add ~/.ssh/fr3d >/dev/null 2>&1
ssh-add ~/.ssh/vps >/dev/null 2>&1

#miniplug zsh
source "$HOME/.zsh/plugins/miniplug.zsh"

# Define a plugin
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zsh-users/zsh-completions'
miniplug theme 'dracula/zsh'

# Source plugins
miniplug load

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit


complete -C '/usr/local/bin/aws_completer' aws

. "$HOME/.cargo/env"

eval "$(fzf --zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


