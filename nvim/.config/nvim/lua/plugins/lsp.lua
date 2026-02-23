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
			},
		},
	},
}
