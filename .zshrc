if [ "$TERM" = "linux" ]; then
	~/scripts/dracula-tty.sh
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/spasm/.oh-my-zsh"

ZSH_THEME="ys"

ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/scripts:$PATH"
export EDITOR="nvim"
