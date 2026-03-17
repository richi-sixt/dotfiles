return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
							workspace = {
								library = { vim.env.VIMRUNTIME },
								checkThirdParty = false,
							},
							telemetry = { enable = false },
						},
					},
				},
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
				ruff_lsp = {
					mason = false,
					enabled = false,  -- optional, falls es läuft
				},
				-- Optional: HTML mit Emmet-Integration
				html = {
					filetypes = { "html", "htmldjango", "haml", "hamlet", "jsx", "tsx" },
					settings = {
						html = {
							format = { enable = true },
							hover = { documentation = true },
						},
					},
				},
				-- Optional: CSS-LS für bessere Autocompletion
				cssls = {
					settings = {
						css = { lint = { unknownAtRules = "ignore" } },
						scss = { lint = { unknownAtRules = "ignore" } },
						less = { lint = { unknownAtRules = "ignore" } },
					},
				},
				-- Optional: vtsls-Tweaks (Extras setzt das schon gut)
				vtsls = {
					settings = {
						vtsls = {
							tsserver = {
								preferences = {
									includeInlayParameterNameHints = "all",
								},
							},
						},
					},
				},
			},
		},
	},
}
