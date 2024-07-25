local preCog = require("precognition")

preCog.toggle()

vim.keymap.set('n', '<leader>mt', preCog.toggle, {})
vim.keymap.set('n', '<leader>mp', preCog.peek, {})
