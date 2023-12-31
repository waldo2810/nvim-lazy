return {
  -- Others
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup()
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      })
    end
  },
  {
    'j-hui/fidget.nvim',
    tag = 'legacy',
    event = 'LspAttach',
    config = function()
      require('fidget').setup({
        text = {
          spinner = 'arc',
        },
      })
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('gitsigns').setup({
        preview_config = {
          border = 'rounded',
        }
      })
    end
  },
  'kdheepak/lazygit.nvim',
  {
    'folke/persistence.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('persistence').setup()
    end,
  },
  {
    'nvim-pack/nvim-spectre',
    keys = {
      { '<leader>S', '<cmd>lua require("spectre").toggle()<cr>' }
    },
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'tversteeg/registers.nvim',
    config = function()
      require('registers').setup({
        window = {
          border = 'rounded',
        },
      })
    end
  },
  {
    'weilbith/nvim-code-action-menu',
    keys = {
      { 'ga', '<cmd>CodeActionMenu<cr>' }
    },
    init = function()
      vim.g.code_action_menu_window_border = 'rounded'
      vim.g.code_action_menu_show_action_kind = false
      vim.g.code_action_menu_show_details = false
    end
  },
  { "prettier/vim-prettier" },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
    }
  }
}
