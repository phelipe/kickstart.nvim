vim.g.gitblame_enabled = 0
return {
    "f-person/git-blame.nvim",
    event = { "BufEnter" },
    -- event = "VeryLazy",
}
