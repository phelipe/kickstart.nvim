-- package for work with snippets like in vscode
return {
    "L3MON4D3/LuaSnip",
    event = { "BufEnter" },
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require 'luasnip'.filetype_extend("dart", { "flutter" })
    end
}
