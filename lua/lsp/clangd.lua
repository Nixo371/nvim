local lsp_utils = require('lsp.utils')

local custom_attach = lsp_utils.custom_attach
local capabilities = lsp_utils.capabilities

return {
	on_attach = custom_attach,
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders",
		"--fallback-style=llvm",
	},
	filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
	init_options = {
		fallbackFlags = { '-std=c++17' },
		offsetEncoding = "utf-8"
	}
}
