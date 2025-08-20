return {

	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			compile = true,
			theme = "wave",
			background = {
				dark = "wave",
				light = "lotus",
			},
		})
	end,
	build = function()
		vim.cmd("KanagawaCompile")
	end,
}
