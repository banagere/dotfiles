# First steps
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

- `brew install git`
- `brew install stow`

- `gh repo clone banagere/dotfiles`
- `cd dotfiles`
- `stow -R -v -t ~ --override='.*' .`
