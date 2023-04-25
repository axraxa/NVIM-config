local builtin = require('telescope.builtin')
require('telescope').setup({
})
--finding word in every file.
vim.keymap.set('n', '<leader>?', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--finding files, first with git second with every folder.
vim.keymap.set('n', '<C-e>', function()
  local cmd = string.format(
    'git ls-files --exclude-standard --ignored --others | tr "\\n" "\\0" | xargs -0 -I {} echo {}')
  builtin.git_files({ hidden = true, cwd = vim.fn.getcwd(), find_command = { 'sh', '-c', cmd } })
end, {})
vim.keymap.set('n', '<A-e>', builtin.find_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
