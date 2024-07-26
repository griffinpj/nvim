local preCog = require("precognition")

preCog.setup({
    opts = {
        highlightColor = { link = "Comment" },
    }
})

preCog.toggle()

vim.keymap.set('n', '<leader>mt', preCog.toggle, {})
vim.keymap.set('n', '<leader>mp', preCog.peek, {})
