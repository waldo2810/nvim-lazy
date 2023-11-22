return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
      }
    },
    keys = { '<C-p>', '<C-f>', '<leader>fg', 'gr', 'gd', '<leader>fw', '<leader><space>' },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<C-p>', builtin.find_files, { silent = true })
      vim.keymap.set('n', '<C-f>', builtin.git_files, { silent = true })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { silent = true })
      vim.keymap.set('n', '<leader>fw', builtin.grep_string, { silent = true })
      vim.keymap.set('n', '<leader><space>', builtin.buffers, { silent = true })
      vim.keymap.set('n', 'gr', builtin.lsp_references, { silent = true })
      vim.keymap.set('n', 'gd', builtin.lsp_definitions, { silent = true })
      -- vim.keymap.set('n', 'gI', builtin.lsp_implementations, { silent = true })

      telescope.setup {
        defaults = {
          file_ignore_patterns = {
            "node_modules"
          },
          mappings = {
            i = {
              ['q'] = actions.close
            },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          }
        }
      }

      telescope.load_extension('fzf')
    end
  },
}
