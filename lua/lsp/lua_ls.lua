local lsp_utils = require('lsp.utils')

local custom_attach = lsp_utils.custom_attach
local capabilities = lsp_utils.capabilities

return {
	on_attach = custom_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				enable = true,
				-- enable = false,
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
			telemetry = { enable = false },
		},
	}
}
