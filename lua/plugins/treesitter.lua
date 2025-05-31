return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- A list of parser names, or "all"
			ensure_installed = {
				"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"
			},

			-- Install parsers synchronously
			sync_install = true,

			-- Automatically install missing parsers when entering buffer
			auto_install = true,

			-- Treesitter highlight module
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
