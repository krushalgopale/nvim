return {
	-- none-ls setup
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- linters
				null_ls.builtins.diagnostics.golangci_lint,
        -- null_ls.builtins.diagnostics.mypy,
				-- formatters
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.ruff,
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format with null-ls" })
	end,
}
