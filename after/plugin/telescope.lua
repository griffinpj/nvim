require('telescope').setup {
    defaults = {
        layout_config = {
        }
    },
    pickers = {
        live_grep = {
            theme = "dropdown",
            vertical = { width = 0.9 },
            path_display = "smart"
        },
        find_files = {
            theme = "dropdown",
            vertical = { width = 0.9 },
            path_display = "smart"
        },
        git_files = {
            theme = "dropdown",
            vertical = { width = 0.9 },
            path_display = "smart"
        }
    },
    extensions = {}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})


