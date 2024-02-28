return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                --                   custom_highlights = function(colors)
                --                       return {
                --                           TabLineSel = {
                --                               bg = colors.pink
                --                           },
                --                           Cursor = {
                --                               bg = :
                --                               fg = colors.pink
                --                           }
                --                       }
                --                   end
            })
            vim.cmd.colorscheme("catppuccin-macchiato")
        end,
    },
    --    {
    --        "shaunsingh/nord.nvim",
    --        config = function()
    --            require("nord").set()
    --        end
    --    },
    {
        "nvim-lua/plenary.nvim",
    },
    {
        "ThePrimeagen/vim-be-good",
    },
}
