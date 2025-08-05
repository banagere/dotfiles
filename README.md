# First steps
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
brew install stow

mkdir dotfiles
cd dotfiles
stow .
