# Common
export ZSH=$HOME"/.oh-my-zsh"

ZSH_THEME="eastwood"

plugins=(
	git
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

case $OSTYPE in
  darwin*)
    # commands for OS X go here
	export PATH="/opt/homebrew/bin:$PATH"
    source "$(brew --prefix)/etc/profile.d/z.sh"
  ;;
  linux*)
    # commands for Linux go here
	export PATH="$HOME/project/esp-clang/bin:$PATH"
  ;;
esac

# Add go binary path
export PATH="$HOME/go/bin:$PATH"

# Add mason binary path
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
