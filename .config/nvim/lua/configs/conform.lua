local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "biome", "prettierd" },
    html = { "biome", "prettierd" },
    javascript = { "biome", "prettierd" },
    typescript = { "biome", "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
