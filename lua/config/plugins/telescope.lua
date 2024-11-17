return {
    'nvim-telescope/telescope.nvim', 

    tag = '0.1.8',
      
    dependencies = { 'nvim-lua/plenary.nvim' },
      
    config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>if', builtin.find_files, { desc = 'Telescope find files' })
	    vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
	    vim.keymap.set('n', '<leader>is', function()
		    builtin.grep_string({ search = vim.fn.input("Grep > ") })
	    end)
    end
}
