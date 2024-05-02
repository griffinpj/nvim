require('telescope').setup {
    pickers = {
        live_grep = {
            vimgrep_args = { "--fixed-strings", },
            theme = "dropdown",
            path_display = "smart",
            layout_config = {
                width = 0.8,
                height = 0.5
            }
        },
        find_files = {
            theme = "dropdown",
            path_display = "smart",
            layout_config = {
                width = 0.8,
                height = 0.5
            }
        },
        git_files = {
            theme = "dropdown",
            path_display = "smart",
            layout_config = {
                width = 0.8,
                height = 0.5
            }
        }
    },
    extensions = {}
}


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})


