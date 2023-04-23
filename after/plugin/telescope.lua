local builtin = require('telescope.builtin')
--finding word in every file. 
vim.keymap.set('n', '<leader>?', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--finding files, first with git second with every folder. 
vim.keymap.set('n', '<C-e>', builtin.git_files, {})
vim.keymap.set('n', '<A-e>', builtin.find_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

