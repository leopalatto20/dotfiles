return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "python",
        "tsx",
        "typescript",
        "javascript",
        "go",
        "rust",
        "html",
        "css",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
        clangd = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
        gopls = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
        rust_analyzer = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
        vtsls = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
          settings = {
            javascript = {
              suggest = {
                autoImports = true,
                completeFunctionCalls = true,
              },
            },
            typescript = {
              inlayHints = { includeInlayParameterNameHints = "all" },
              suggest = {
                autoImports = true,
                completeFunctionCalls = true,
              },
            },
          },
        },
        tailwindcss = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
          filetypes = {
            "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte",
          },
          root_dir = require("lspconfig").util.root_pattern(
            "tailwind.config.js",
            "tailwind.config.ts",
            "postcss.config.js",
            "package.json",
            ".git"
          ),
        },
      },
    },
  },
}

