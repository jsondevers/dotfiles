export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export ZSH=$HOME/.oh-my-zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

. "$HOME/.cargo/env"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Remap nvim to vi
alias vi='nvim'
alias vim='nvim'

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# oh my zsh
plugins=(
  git
  macos
  dotenv
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

if [[ -z "$TMUX" ]]; then
    tmux
fi

set -o vi
