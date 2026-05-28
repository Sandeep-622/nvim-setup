return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	filesystem = {
		use_libuv_file_watcher = true,
		filtered_items = { hide_dotfiles = false },
		follow_current_file = true,
		hijack_netrw_behavior = "open_default",
	},
	lazy = false, -- neo-tree will lazily load itself
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", { silent = true })
    vim.keymap.set("n", "<leader>n", ":Neotree toggle left<CR>", { silent = true })
  end,
}
