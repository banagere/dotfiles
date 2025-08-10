[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# omz
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Homebrew settings
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# custom
alias bbc="brew cleanup && brew autoremove && brew update && brew upgrade"
alias p="python3"

# bun
[ -s "/Users/banagere/.bun/_bun" ] && source "/Users/banagere/.bun/_bun"

# zoxide
export XDG_DATA_DIRS="/opt/homebrew/share:$XDG_DATA_DIRS"
eval "$(zoxide init zsh)"

[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
