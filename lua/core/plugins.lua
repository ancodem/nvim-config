local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Put your plugins here
local userPlugins = {
    {'tpope/vim-surround'},
    {'kdheepak/lazygit.nvim'},
    {'Pocco81/auto-save.nvim'}
}

-- Put your theme plugins here
local userThemes = {
    { 'catppuccin/nvim' },
    {'morhetz/gruvbox'},
    {'sainnhe/gruvbox-material'},
    {'altercation/vim-colors-solarized'},
    {'maxmx03/fluoromachine.nvim'},
    {'maxmx03/solarized.nvim'},
    {'kabbamine/yowish.vim'},
    {'gwutz/vim-materialtheme'},
    {'marciomazza/vim-brogrammer-theme'},
    {'lissatransborda/dalton-vim'}
}

local corePlugins = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {'nvim-lua/plenary.nvim'}
    }, {'cooperuser/glowbeam.nvim'}, {'joshdick/onedark.vim'},
    {'nvim-treesitter/nvim-treesitter'}, {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    }, {'nvim-tree/nvim-web-devicons'},
    {"williamboman/mason.nvim", build = ":MasonUpdate"},
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'jose-elias-alvarez/null-ls.nvim'}, {'windwp/nvim-autopairs'},
    {'Djancyp/outline'}, {'terrortylor/nvim-comment'},
    {'windwp/nvim-ts-autotag'}, {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    },
    {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
    {'hrsh7th/cmp-nvim-lsp-signature-help'}, {
        'linrongbin16/lsp-progress.nvim',
        event = {'VimEnter'},
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function() require('lsp-progress').setup() end
    }, {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    }, {"folke/which-key.nvim"},
    { 'phaazon/hop.nvim'},
    { 'hrsh7th/vim-vsnip' },
    {'hrsh7th/vim-vsnip-integ'}

}

require("lazy").setup({
    userThemes,
    userPlugins,
    corePlugins
});
