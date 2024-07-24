return {
    "zaldih/themery.nvim",
    config = function()
        require("themery").setup({
            themes = {"catppuccin-mocha", "kanagawa-wave"},
        })
    end
}
