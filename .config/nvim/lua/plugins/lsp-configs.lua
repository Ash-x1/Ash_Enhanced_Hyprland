return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "html", "cssls", "ts_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			require("lspconfig").pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			-- HTML
			lspconfig.html.setup({
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			})

			-- CSS
			lspconfig.cssls.setup({
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			})

			local on_attach = function(client, bufnr)
				local opts = { buffer = bufnr, silent = true }

				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>f", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
			end

			lspconfig.lua_ls.setup({
				on_attach = on_attach,
			})

			lspconfig.ts_ls.setup({
				on_attach = on_attach,
			})

			lspconfig.html.setup({
				on_attach = on_attach,
			})

			lspconfig.cssls.setup({
				on_attach = on_attach,
			})
		end,
	},
}
