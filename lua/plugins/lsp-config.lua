return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "neovim/nvim-lspconfig",
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
