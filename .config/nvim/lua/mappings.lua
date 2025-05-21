require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Run or continue the debugger" })
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
map("n", "n", "nzz", { desc = "Next search result" })
map("n", "N", "Nzz", { desc = "Previous search result" })
map(
  "n",
  "<leader>rcu",
  function ()
    require("crates").upgrade_all_crates()
  end,
  { desc = "Update crates" }
)

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted text down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted text up" })
map("x", "P", "\"_dP", { desc = "Paste over selection without overwriting copy buffer" })

map("n", "<leader>lf", ":lua vim.diagnostic.open_float(nil, {focus=true, scope=\"cursor\"})<CR>", { desc = "Show diagnostics" })
