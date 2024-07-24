return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            lspconfig.clangd.setup({
               capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
               sources = cmp.config.sources({
                   { name = 'nvim_lsp' },
               })
           })
       end,
    },
}
