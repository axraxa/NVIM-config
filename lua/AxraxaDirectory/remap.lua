vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>e", "$")
vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y",'"+y')
vim.keymap.set("n", "<leader>Y", '"+Y' )

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


function CommentOutLine()
    -- Get current line number
    local current_line = vim.api.nvim_win_get_cursor(0)[1]

    -- Get current buffer
    local buffer = vim.api.nvim_get_current_buf()

    -- Get current line content
    local line_content = vim.api.nvim_buf_get_lines(buffer, current_line-1, current_line, false)[1]

    -- Detect comment prefix based on file type or language
    local comment_prefix = ""
    if vim.bo.filetype == "c" or vim.bo.filetype == "cpp" or vim.bo.filetype == "java" or vim.bo.filetype == "javascript"  or vim.bo.filetype == "javascriptreact"   then
        comment_prefix = "// "
    elseif vim.bo.filetype == "python" or vim.bo.filetype == "vim" then
        comment_prefix = "# "
    elseif vim.bo.filetype == "sh" then
        comment_prefix = "# "
    elseif vim.bo.filetype == "lua" then
        comment_prefix = "-- "
    elseif vim.bo.filetype == "css" then
        comment_prefix = "/* "
    elseif vim.bo.filetype == "html" or vim.bo.filetype == "xml" then
        comment_prefix = "<!-- "
    end

    -- Check if line is already commented
    local is_commented = string.find(line_content, "^%s*" .. comment_prefix) ~= nil

    if is_commented then
        -- Line is already commented, remove comment prefix
        local uncommented_line = string.gsub(line_content, "^%s*" .. comment_prefix, "")
        vim.api.nvim_buf_set_lines(buffer, current_line-1, current_line, false, {uncommented_line})
    else
        -- Line is not commented, add comment prefix
        local commented_line = comment_prefix .. line_content
        vim.api.nvim_buf_set_lines(buffer, current_line-1, current_line, false, {commented_line})
    end
end
vim.api.nvim_set_keymap('n', '<leader>c', ':lua CommentOutLine()<CR>', {noremap = true, silent = true})

-- bracket completion
-- inoremap { {}<Esc>ha
vim.api.nvim_set_keymap('i', '{', '{}<Esc>ha', {noremap = true})

-- inoremap ( ()<Esc>ha
vim.api.nvim_set_keymap('i', '(', '()<Esc>ha', {noremap = true})

-- inoremap [ []<Esc>ha
vim.api.nvim_set_keymap('i', '[', '[]<Esc>ha', {noremap = true})

-- inoremap " ""<Esc>ha
vim.api.nvim_set_keymap('i', '"', '""<Esc>ha', {noremap = true})

-- inoremap ' ''<Esc>ha
vim.api.nvim_set_keymap('i', "'", "''<Esc>ha", {noremap = true})

-- inoremap ` ``<Esc>ha
vim.api.nvim_set_keymap('i', '`', '``<Esc>ha', {noremap = true})

