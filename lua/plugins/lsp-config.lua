return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- lsp server config
			vim.lsp.config["html"] = {
				capabilities = capabilities,
			}

			vim.lsp.config["cssls"] = {
				capabilities = capabilities,
				filetypes = { "css", "scss", "less", "javascript", "javascriptreact", "typescript", "typescriptreact" },
			}

			vim.lsp.config["lua_ls"] = {
				capabilities = capabilities,
			}

			vim.lsp.config["gopls"] = {
				capabilities = capabilities,
			}

			vim.lsp.config["ts_ls"] = {
				capabilities = capabilities,
				filetypes = { "javascript", "javascriptreact", "javascript.jsx" },
			}

			vim.lsp.config["tailwindcss"] = {
				capabilities = capabilities,
			}

			vim.lsp.config["clangd"] = {
				capabilities = capabilities,
			}

      vim.lsp.config["jedi_language_server"] = {
				capabilities = capabilities,
			}
			-- vim.lsp.config["pyright"] = {
			-- 	capabilities = capabilities,
			-- 	on_attach = function(client, bufnr)
			-- 		-- Disable Pyright formatting
			-- 		client.server_capabilities.documentFormattingProvider = false
			-- 		client.server_capabilities.documentRangeFormattingProvider = false
			-- 	end,
			-- }
			--
			vim.lsp.enable("lua_ls", "gopls", "html", "ts_ls", "tailwindcss", "cssls", "jedi_language_server", "clangd")

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
