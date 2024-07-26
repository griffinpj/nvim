-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- Theme
    use { "scottmckendry/cyberdream.nvim" }

    -- -- Obsidian
    use({
        "epwalsh/obsidian.nvim",
        tag = "*",  -- recommended, use latest release instead of latest commit
        requires = {
            -- Required.
            "nvim-lua/plenary.nvim",
            -- Completion of note references
            -- "hrsh7th/nvim-cmp.nvim",  why you no install
            -- see below for full list of optional dependencies 👇
        }
    })

    -- Git plugins
    use ('tpope/vim-fugitive')
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

    -- File navigation
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')

    -- better commenting
    use ('tpope/vim-commentary')

    -- Vim start screen
    use ('mhinz/vim-startify')

    -- Better Vim Scrolling --
    use ('karb94/neoscroll.nvim')

    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    use({
        "giusgad/pets.nvim",
        requires = {
            "giusgad/hologram.nvim",
            "MunifTanjim/nui.nvim",
        }
    })

    -- netrw buffer-style
    use {"stevearc/oil.nvim"}

    -- Training wheels for motions
    use {"tris203/precognition.nvim"}

    -- Better Find and Replace '\ + r + a
    use ('kqito/vim-easy-replace')

    -- Auto remove white space for me please
    use ('ntpeters/vim-better-whitespace')

    -- better folding
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    -- LSP Setup --

    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use ('nvim-treesitter/nvim-treesitter-context')
    use ('nvim-treesitter/playground')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            {'neovim/nvim-lspconfig'},             -- Required
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Renders images in nvim w/ ASCII
    use {
      'samodostal/image.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        { 'm00qek/baleia.nvim', tag = 'v1.3.0' }
      }
    }
end)
