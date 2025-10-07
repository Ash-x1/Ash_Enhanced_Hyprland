return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,

	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- يظهر كل الملفات بما فيها المخفية
					hide_dotfiles = false,
				},
			},
		})

		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
	end,
}
