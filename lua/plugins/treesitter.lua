return {
    {'nvim-treesitter/nvim-treesitter' },
    {'nvim-treesitter/nvim-treesitter-context'},
    {'nvim-treesitter/playground'},
    config = function ()
        vim.cmd("TSUpdate")
    end
}
