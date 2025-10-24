if status is-interactive
  if not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
  end
end

set -Ux GPG_TTY (tty)

alias vim=nvim
alias ls="eza --all --long --icons --git"
