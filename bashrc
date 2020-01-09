# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export VISUAL=vim
export EDITOR=$VISUAL

eval "$(gulp --completion=bash)"

export N_PREFIX=$HOME/.local

export GPG_TTY=$(tty)

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
  source $HOME/.bash-git-prompt/gitprompt.sh
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
