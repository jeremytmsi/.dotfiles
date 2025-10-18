if status is-interactive
    # Commands to run in interactive sessions can go here
    set -Ux GPG_TTY (tty)
    alias vim=nvim
    alias ls="eza --all --long --icons --git"
end
