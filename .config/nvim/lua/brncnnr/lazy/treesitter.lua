return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter").setup({
			auto_install = true,
			vim.opt.foldexpr == "v:lua.vim.treesitter.foldexpr()",
			vim.opt.foldtext == "v:lua.vim.treesitter.foldtext()",
		})
	end,
}
