return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								-- recognize 'vim' as global variable
								globals = { "vim" },
							},
							workspace = {
								-- neovim runtime files
								library = {
									vim.env.VIMRUNTIME,
								},
								checkThirdParty = false,
							},
							telemetry = {
								enable = false,
							},
						},
					},
				},
				-- Pyright für Type Checking
				pyright = {
					settings = {
						python = {
							analysis = {
								typeCheckingMode = "basic",
								autoSearchPaths = true,
								useLibraryCodeForTypes = true,
							},
						},
					},
				},
				-- Ruff LSP (optional, wenn du Ruff als LSP willst)
				ruff_lsp = {
					init_options = {
						settings = {
							lineLength = 79,
						},
					},
				},
			},
		},
	},

	-- Formatierung mit Ruff
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				python = { "ruff_format", "ruff_fix" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},

	-- Linting mit Ruff
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				python = { "ruff" },
			},
		},
	},
}
