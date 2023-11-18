-- disable netrw at the very start of your init.lua (nvim-tree)
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.wrap = false -- No wrap lines
vim.opt.scrolloff = 10
vim.o.hlsearch = false
vim.opt.incsearch = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.o.ch = 0
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- Diagnostic icons
vim.fn.sign_define('DiagnosticSignError',
	{ text = ' ', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn',
	{ text = ' ', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo',
	{ text = ' ', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint',
	{ text = '', texthl = 'DiagnosticSignHint' })

-- Keybinds
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<C-A>', 'gg<S-v>G')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Git
vim.cmd('nnoremap <silent> <leader>gp :Gitsigns preview_hunk<CR>')
vim.cmd('nnoremap <silent> <leader>gr :Gitsigns reset_hunk<CR>')
vim.cmd('nnoremap <silent> <leader>gg :LazyGit<CR>')
-- Resize
vim.cmd('nnoremap <silent> <C-Up> :resize -2<CR>')
vim.cmd('nnoremap <silent> <C-Down> :resize +2<CR>')
vim.cmd('nnoremap <silent> <C-Left> :vertical resize -2<CR>')
vim.cmd('nnoremap <silent> <C-Right> :vertical resize +2<CR>')
-- Bufferline
vim.cmd('nnoremap <silent> <S-tab> :BufferLineCyclePrev<CR>')
vim.cmd('nnoremap <silent> <tab> :BufferLineCycleNext<CR>')
vim.cmd('nnoremap <silent> <leader>< :BufferLineMovePrev<CR>')
vim.cmd('nnoremap <silent> <leader>> :BufferLineMoveNext<CR>')
vim.cmd('nnoremap <silent> <leader>c :bp\\|bd #<CR>')
vim.cmd('nnoremap <silent> <C-s> :BufferLinePick<CR>')

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
