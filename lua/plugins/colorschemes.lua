-- vim.cmd [[
--     " syntax off
--     hi Normal guibg=black guifg=cyan
-- ]]

return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false, -- make sure we load this during startup if it is your main colorschem
    priority = 1000,
    config = function()
      require('rose-pine').setup({
        disable_background = true,
        disable_float_background = true,
        disable_italics = true,
      })
      vim.cmd('colorscheme rose-pine')
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    name = 'kanagawa',
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require('kanagawa').setup({
    --     transparent = true,
    --     colors = {
    --       theme = {
    --         all = {
    --           ui = {
    --             bg_gutter = "none"
    --           }
    --         }
    --       }
    --     },
    --     overrides = function(colors)
    --       local theme = colors.theme
    --       return {
    --         NormalFloat = { bg = "none" },
    --         FloatBorder = { bg = "none" },
    --         FloatTitle = { bg = "none" },
    --
    --         TelescopeTitle = { fg = theme.ui.special, bold = true },
    --         TelescopePromptNormal = { bg = "none" },
    --         TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = "none" },
    --         TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
    --         TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = "none" },
    --         TelescopePreviewNormal = { bg = "none" },
    --         TelescopePreviewBorder = { fg = theme.ui.bg_dim, bg = "none" },
    --       }
    --     end,
    --   })
    --   vim.cmd("colorscheme kanagawa")
    -- end,
  },
  {
    "svrana/neosolarized.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- dependencies = { "tjdevries/colorbuddy.nvim" },
    -- config = function()
    -- 	require('neosolarized').setup({
    -- 		disable_background = true,
    -- 	})
    -- 	vim.cmd('colorscheme neosolarized')
    -- end,
  },
  {
    'sainnhe/gruvbox-material',
    -- enabled = true,
    -- priority = 1000,
    -- config = function()
    --   vim.g.gruvbox_material_transparent_background = 1
    --   -- vim.g.gruvbox_material_background = 'hard' -- soft, medium, hard
    --   vim.g.gruvbox_material_better_performance = 1
    --   vim.cmd.colorscheme 'gruvbox-material'
    -- end,
  },
}
