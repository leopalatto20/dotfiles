local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    markdown = { "prettier" },
    typescript = { "prettier" },
    javascript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },

    c_cpp = { "clang-format" },
    cpp = { "clang-format" },
    c = { "clang-format" },

    python = { "black" },

    rust = { "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 20000,
    lsp_fallback = true,
  },
}

return options
