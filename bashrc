# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

git_branch()
{
    GIT_BRANCH=$(git symbolic-ref --short HEAD 2>/dev/null) || return
    [ -n "$GIT_BRANCH" ] && echo "($GIT_BRANCH) "
}

PS1='\[\033[0;32m\]\u@\h \[\033[0;33m\]\w \[\033[0;36m\]$(git_branch)\n\[\033[01;34m\]$\[\033[00m\] '

export N_PREFIX=$HOME/.local

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
