if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias bbc="brew cleanup && brew autoremove && brew update && brew upgrade"
alias l="ls -lh"
alias ll="ls -alh"

# Load tide if installed
#if functions -q tide
#    tide
#end

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
