# PS1 prompt color vars
RED="\[\033[1;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
PURPLE="\[\033[1;35m\]"
BLUE="\[\033[0;34m\]"
TIME="[\t]"
DIRNAME="\w"

F_BOLD=`tput bold`
F_NORMAL=`tput sgr0`

# return branch name
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "["${ref#refs/heads/}"$(evil_git_dirty)] "
}

# Returns "*" if the current git branch is dirty.
function evil_git_dirty {
  [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "*"
}

export PS1="$GREEN\$(parse_git_branch)$WHITE$ "
