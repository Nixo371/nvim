local lsp_utils = require('lsp.utils')

local custom_attach = lsp_utils.custom_attach
local capabilities = lsp_utils.capabilities

return {
	on_attach = custom_attach,
	capabilities = capabilities,
	cmd = {"gopls", "serve"},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	}
}
