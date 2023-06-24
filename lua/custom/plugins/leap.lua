-- plugin for fast movimentation in nvim
return {
    'ggandor/leap.nvim',
    dependencies = 'tpope/vim-repeat',
    config = function()
        require("leap").setup({})
        require("leap").add_default_mappings()
    end
}
