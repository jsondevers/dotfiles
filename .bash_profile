export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/jasondevers/.bash_profile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jasondevers/.bash_profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Remap nvim to vi
alias vi='nvim'
alias vim='nvim'

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
