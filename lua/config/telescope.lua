require('telescope').setup({
    pickers = {
        live_grep = {
            vimgrep_args = { "--fixed-strings", },
            path_display = "smart",
            layout_config = {
                horizontal = {
                    width = 0.95,
                    preview_width = 0.6
                }
            }
        },
        find_files = {
            path_display = "smart",
            layout_config = {
                horizontal = {
                    width = 0.95,
                    preview_width = 0.6
                }
            }
        },
        git_files = {
            path_display = "smart",
            layout_config = {
                horizontal = {
                    width = 0.95,
                    preview_width = 0.6
                }
            }
        }
    },
    extensions = {
        themes = {
            layout_config = {
                horizontal = {
                    width = 0.8,
                    height = 0.6
                }
            },
            enable_previewer = true,
            enable_live_preview = true,
        }
    }
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pc', builtin.commands, {})


