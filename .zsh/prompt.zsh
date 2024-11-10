# Function to get the current git branch
function git_branch {
  git rev-parse --abbrev-ref HEAD 2> /dev/null
}
PS1='%F{red}${AWS_VAULT}%f '  # AWS_VAULT in cyan if set
PS1+='%F{blue}%~%f '                       # Current directory in white
PS1+='%F{green}$(git_branch)%f '  # Git branch
PS1+='
%F{green}$%f '                        # Dollar sign in green

