return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- formatting
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.pretty_php,

                -- diagnostics
                --null_ls.builtins.diagnostics.eslint_d,
                --null_ls.builtins.diagnostics.phpcs,
            },
        })

        null_ls.register(require("none-ls-php.diagnostics.php"))

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
    dependencies = {
        "gbprod/none-ls-php.nvim",
    },
}
