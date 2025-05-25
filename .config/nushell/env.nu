# env.nu
#
# Installed by:
# version = "0.104.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

$env.TRANSIENT_PROMPT_COMMAND = "❯ "
$env.TRANSIENT_PROMPT_INDICATOR = ""
$env.TRANSIENT_PROMPT_INDICATOR_VI_INSERT = ""
$env.TRANSIENT_PROMPT_INDICATOR_VI_NORMAL = ""
$env.TRANSIENT_PROMPT_MULTILINE_INDICATOR = ""
$env.TRANSIENT_PROMPT_COMMAND_RIGHT = ^starship module time
$env.config.buffer_editor = "nvim"

$env.path ++= [
  "/nix/var/nix/profiles/default/bin",
  "/home/gustavo/.nvm/versions/node/v20.18.0/bin",
  "/home/gustavo/.cargo/bin",
  "/usr/local/sbin",
  "/usr/local/bin",
  "/usr/sbin",
  "/usr/bin",
  "/sbin",
  "/bin",
  "/usr/games",
  "/usr/local/games",
  "/snap/bin",
  "/opt/nvim-linux64/bin"
]

zoxide init nushell --cmd cd | save -f ~/.zoxide.nu
