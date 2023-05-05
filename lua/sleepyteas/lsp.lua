local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	'tsserver',
	-- 'denols',
	'volar',
    'bashls',
    'emmet_ls',
    'eslint',
    'html',
    -- 'markdownlint', 
    -- 'prettier',
})


lspconfig.denols.setup({
    on_attach = on_attach,

    -- to make sure ts/js files don't use this
    root_dir = lspconfig.util.root_pattern("deno.json"),

    init_options = {
        lint = true,
    },
})

lspconfig.tsserver.setup({
    on_attach = on_attach,

    -- to make sure deno files don't use this
    root_dir = lspconfig.util.root_pattern("package.json"),

    -- lsp will ignore single files. This means a package.json is required for all js/ts files
    single_file_support = false,
})

lsp.setup()
