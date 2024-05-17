shopt -s histappend
shopt -s checkwinsize
HISTFILE="$HOME/.history"
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%Y-%m-%d %T - '

force_color_prompt=yes

source "$HOME/.profile"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

for file in $HOME/.bash/*; do
	source "$file"
done

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)'
PS1='\[\e[93;2;3m\]${AWS_VAULT}\[\e[0m\] \n\[\e[92;1m\]${PS1_CMD1}\[\e[0m\] \[\e[95m\]\W\[\e[0m\]  > '

#export IP=$([ -d /proc/sys/net/ipv4/conf/tun0 ] && echo $({ ip -4 -br a sh dev tun0 | awk {'print $3'} | cut -f1 -d/; } 2>/dev/null))

#PS1="\[\033[0;31m\]\342\224\214\342\224\200$([[ $? != 0 ]] && echo "[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200")[\[\033[1;97m\]\u\[\033[01;33m\]@\[\033[1;94m\]\h\[\033[01;33m\]\[\033[0;31m\]]\342\224\200\[\033[0;31m\][\[\033[1;97m\]"$IP"\[\033[0;31m\]]\342\224\200[\[\033[1;94m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\$\[\e[0m\]"

complete -C '/usr/local/bin/aws_completer' aws

eval $(ssh-agent) >/dev/null 2>&1

ssh-add ~/.ssh/fr3d >/dev/null 2>&1
ssh-add ~/.ssh/home >/dev/null 2>&1
ssh-add ~/.ssh/vps >/dev/null 2>&1
ssh-add ~/.ssh/lab >/dev/null 2>&1
ssh-add ~/.ssh/talos >/dev/null 2>&1

. "$HOME/.cargo/env"

eval "$(fzf --bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
