if status is-interactive
and not set -q TMUX
  exec tmux
end

set -Ux GPG_TTY (tty)

alias vim=nvim
alias ls="eza --all --long --icons --git"
