vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>e", '$')
vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n","<leader>wv","<C-w>v")
vim.keymap.set("n","<leader>wh","<C-w>h")
vim.keymap.set("n","<leader>wl","<C-w>l")

vim.keymap.set("n", "<CR>", "o")
vim.keymap.set("n", "<leader><CR>", "O")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjrnHaland
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


--lsp trouble toggle
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader><tab>d", "<cmd>TroubleToggle document_diagnostics<cr>",
  { silent = true, noremap = true }
)

