return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      -- server = {
      -- 	color = {
      -- 		enabled = true,
      -- 	},
      -- 	settings = {
      -- 		showTodos = true,
      -- 		completeFunctionCalls = true,
      -- 	},
      -- 	on_attach = require("user.lsp.handlers").on_attach,
      -- 	capabilities = {
      -- 		require("user.lsp.handlers").capabilities,
      -- 	},
      -- },
    })
  end,
}
