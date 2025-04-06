local capabilities = vim.lsp.protocol.make_client_capabilities();
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

custom_attach = function()
	print('Lsp Attached.')
end

return {
	capabilities = capabilities,
	custom_attach = custom_attach
}
