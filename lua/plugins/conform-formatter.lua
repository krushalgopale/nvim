return {
    -- Mason setup
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- Auto install tools via Mason
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "stylua",       
          "prettierd",    
<<<<<<< HEAD
          "clang-format",  
          "golines", 
          "gofumpt", 
          "goimports",
          "ruff",
=======
          "clang-format", 
          "gofmt", 
          "golines", 
          "gofumpt", 
          "goimports",
>>>>>>> 94a4811 (updated)
        },
        auto_update = true,
        run_on_start = true,
      })
    end,
  },

  -- Conform Setup
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({

			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt", "golines", "gofumpt", "goimports" },
				javascript = { "prettierd" },
        cpp = { "clang-format" }
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format()
		end, { noremap = true, silent = true })
	end,
}
