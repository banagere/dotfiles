# Install Brew
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- `brew install git`
- `brew install stow`

- `gh repo clone banagere/dotfiles`
- `cd dotfiles`
- `stow -R -v -t ~ --override='.*' .`
- `brew bundle --file=~/dotfiles/.config/brew/Brewfile`

# Configure Fish
- `echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells`
- `chsh -s /opt/homebrew/bin/fish`
