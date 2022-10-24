-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Functional wrapper for mapping custom keybindings
-- local function noremap(mode, lhs, rhs, opts)
-- 	local options = { noremap = true }
-- 	if opts then
-- 		options = vim.tbl_extend("force", options, opts)
-- 	end
-- 	keymap.set(mode, lhs, rhs, options)
-- end

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- swap lines -- @TODO: none of those seem to work
-- :nnoremap <C-Up> <Up>"add"ap<Up>
-- :nnoremap <C-Down> "add"ap
-- keymap.set("n", "<C-k>", ':let save_a=@a<Cr><Up>"add"ap<Up>:let @a=save_a<Cr>')
-- keymap.set("n", "<C-j>", ':let save_a=@a<Cr>"add"ap:let @a=save_a<Cr>')
--
-- noremap("n", "<C-j>", ":m .+1<CR>==")
-- keymap.set("n", "<A>k", ":m .-2<CR>==")
-- keymap.set("i", "<A>j", "<Esc>:m .+1<CR>==gi")
-- keymap.set("i", "<A>k", "<Esc>:m .-2<CR>==gi")
-- keymap.set("v", "<A>j", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "<A>k", ":m '<-2<CR>gv=gv")
--
-- vim.cmd([[ nnoremap <A-j> :m .+1<CR>== ]])
-- nnoremap <A-k> :m .-2<CR>==
-- inoremap <A-j> <Esc>:m .+1<CR>==gi
-- inoremap <A-k> <Esc>:m .-2<CR>==gi
-- vnoremap <A-j> :m '>+1<CR>gv=gv
-- vnoremap <A-k> :m '<-2<CR>gv=gv

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>") -- increment
-- keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management --
-- panes
keymap.set("n", "<leader>sy", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sx", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sc", ":close<CR>") -- close current split window
-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<C-S-l>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<C-S-h>", ":tabp<CR>") --  go to next tab

-- terminal
keymap.set("n", "<leader>tt", ":terminal<CR>")
keymap.set("n", "<leader>ty", "<C-w>v :terminal<CR>")
keymap.set("n", "<leader>tx", "<C-w>s :terminal<CR>")
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- npm scripts
keymap.set("n", "<leader>nd", "<C-w>h :terminal npm run dev<CR>") -- dev server
keymap.set("n", "<leader>nl", ":!npm run lint<CR>") -- linter
keymap.set("n", "<leader>nf", ":!npm run lint:fix<CR>") -- linter --fix
keymap.set("n", "<leader>nu", "<C-w>v :terminal npm run unit:ci<CR>") -- unit tests
keymap.set("n", "<leader>nc", "<C-w>v :terminal npm run comp:ci<CR>") -- compnent tests
keymap.set("n", "<leader>ne", "<C-w>v :terminal npm run e2e:ci<CR>") -- e2e tests

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>fe", ":NvimTreeFocus<CR>") -- focus file explorer

-- lazygit
keymap.set("n", "<leader>lg", ":LazyGit<CR>")

-- view current git diff
keymap.set("n", "<leader>fd", ":DiffviewOpen<CR>")
keymap.set("n", "<leader>fr", ":DiffviewFileHistory %<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
