if status is-interactive
    # intial
    set fish_greeting
    eval (/opt/homebrew/bin/brew shellenv)
    set -g fish_prompt_show_exit_status 0
    set -x HOMEBREW_NO_ENV_HINTS 1

    # Aliases
    alias bbc="brew cleanup && brew autoremove && brew update && brew upgrade"
    alias l="ls -lh"
    alias ll="ls -alh"
    alias gs="git status"
    alias gf="git fetch"
    alias gpo="git pull origin"

    # zoxide init
    if type -q zoxide
        zoxide init fish | source
    end

    # Interactive jump using fzf
    function zi
        zoxide query --interactive | read -l dir
        if test -n "$dir"
            cd "$dir"
        end
    end

    # Amazon Q CLI (add path where `q` binary lives)
    # Example for brew install:
    set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
    # If installed elsewhere, update with correct dir:
    # set -U fish_user_paths /path/to/q/bin $fish_user_paths

    # Load tide if installed
    #if functions -q tide
    #    tide
    #end
end
