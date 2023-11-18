return {
	{
		'ThePrimeagen/harpoon',
		-- keys = { "<C-h>", "<C-e>", "<C-S-j>", "<C-S-k>", "<C-S-h>", "<C-S-l>" },
		config = function()
			local mark = require("harpoon.mark")
			local ui = require("harpoon.ui")

			vim.keymap.set("n", "<leader>h", mark.add_file)
			vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

			vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
			vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
			vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
			vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
		end
	}
}
