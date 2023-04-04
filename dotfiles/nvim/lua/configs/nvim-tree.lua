if vim.fn.getcwd():match("Note$") then
	require("nvim-tree").setup({
		sort_by = "modification_time",
		view = {
			width = 30,
			adaptive_size = false,
			mappings = {
				list = {
					{ key = "u", action = "dir_up" },
				},
			},
		},
		renderer = {
			group_empty = true,
			highlight_opened_files = "none",
			highlight_modified = "none",
		},
		filters = {
			dotfiles = true,
		},
	})
else
	require("nvim-tree").setup({
		sort_by = "case_sensitive",
		view = {
			width = 30,
			adaptive_size = true,
			mappings = {
				list = {
					{ key = "u", action = "dir_up" },
				},
			},
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	})
end
