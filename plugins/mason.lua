-- customize mason plugins
return {
  {
    "williamboman/mason.nvim",
    opts = {
      pip = {
        upgrade_pip = true,
      },
    },
  },
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "bashls",
        "eslint",
        "jedi_language_server",
        "remark_ls",
        "ruff_lsp",
        "terraformls",
        "tflint",
        "tsserver",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        -- "eslint_d",
        "markdownlint",
        "ruff",
        "shellcheck",
        "tflint",
        "yamllint",
        "markdownlint",
        "prettier",
        "prettierd",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "bash-debug-adapter",
        "debugpy",
        "js-debug-adapter",
      },
    },
  },
}
