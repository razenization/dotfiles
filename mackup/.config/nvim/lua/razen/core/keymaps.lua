-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

-- maybe im too lazy to do 3 buttons
keymap.set("n", "<leader>1", ":tabn 1<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>2", ":tabn 2<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>3", ":tabn 3<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>4", ":tabn 4<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>5", ":tabn 5<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>6", ":tabn 6<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>7", ":tabn 7<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>8", ":tabn 8<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>9", ":tabn 9<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>0", ":tabn 0<CR>", { noremap = true, silent = true })

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>fr", ":NvimTreeFindFile<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- select all matches
keymap.set("n", "<leader>hd", ":set hlsearch!<CR>", { noremap = true, silent = true })
