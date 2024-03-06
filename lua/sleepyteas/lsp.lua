local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')

lsp.preset("recommended")
lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
    'volar',
    'bashls',
    'emmet_ls',
    'eslint',
    'html',
    'lua_ls',
})


lspconfig.denols.setup({
    -- to make sure ts/js files don't use this
    root_dir = lspconfig.util.root_pattern("deno.json"),

    init_options = {
        lint = true,
    },
})

lspconfig.tsserver.setup({
    -- to make sure deno files don't use this
    root_dir = lspconfig.util.root_pattern("package.json"),

    -- lsp will ignore single files. This means a package.json is required for all js/ts files
    single_file_support = false,

    init_options = {
        preferences = {
            importModuleSpecifierPreference = 'non-relative',

            -- Vue + JS will not auto-import properly without this
            javascript = {
                importModuleSpecifierPreference = 'non-relative'
            }
        },
    }
})


lsp.setup()
