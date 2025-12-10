return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- diagnostics
        null_ls.builtins.diagnostics.golangci_lint,
      },
    })

    vim.keymap.set("n", "<leader>f", function()
       vim.lsp.buf.format({ async = true })
    end, { desc = "Format with null-ls" })
  end
}
