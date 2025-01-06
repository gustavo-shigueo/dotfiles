if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$PATH:/opt/nvim-linux64/bin"

alias ls="eza --color=always --icons=always -a1F --hyperlink --group-directories-first"
alias lt="eza --color=always --icons=always -a1T -I .git -L 5 --hyperlink --group-directories-first"

starship init fish | source
zoxide init --cmd cd fish | source

