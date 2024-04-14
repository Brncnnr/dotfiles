return {
	--{
	--    "catppuccin/nvim",
	--    lazy = false,
	--    name = "catppuccin",
	--    priority = 1000,
	--    config = function()
	--        require("catppuccin").setup({
	--            --                   custom_highlights = function(colors)
	--            --                       return {
	--            --                           TabLineSel = {
	--            --                               bg = colors.pink
	--            --                           },
	--            --                           Cursor = {
	--            --                               bg = :
	--            --                               fg = colors.pink
	--            --                           }
	--            --                       }
	--            --                   end
	--        })
	--        vim.cmd.colorscheme("catppuccin-macchiato")
	--    end,
	--},
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
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			vim.cmd.colorscheme("tokyonight-night")

			-- You can configure highlights by doing something like
			vim.cmd.hi("Comment gui=none")
		end,
	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},
	{
		"lewis6991/gitsigns.nvim", -- e.a. show changes by colored lines next to the line numbers
		opts = {},
	},
	{
		"christoomey/vim-tmux-navigator", -- jump between nvim and tmux panes
		vim.keymap.set("n", "C-<s-left>-h", ":TmuxNavigateLeft<CR>"),
		vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>"),
		vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>"),
		vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>"),
	},
}
