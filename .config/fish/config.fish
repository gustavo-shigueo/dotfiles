if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$PATH:/opt/nvim-linux64/bin"

starship init fish | source
zoxide init --cmd cd fish | source

