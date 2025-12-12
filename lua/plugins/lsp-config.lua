return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "html",
        "cssls",
        "lua_ls",
        "gopls",
        "ts_ls",
        "tailwindcss",
        "clangd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- lsp server config
      local lspconfig = require("lspconfig")
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
        filetypes = { "css", "scss", "less", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        filetypes = { "javascript", "javascriptreact", "javascript.jsx" },
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
      })

      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          spacing = 2,
        },
        update_in_insert = true,
      })

      -- vim keybindings
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
