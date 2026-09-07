require("tokyonight").setup({
    transparent = true
})

vim.opt.background = "dark"
vim.cmd.colorscheme "tokyonight-storm"

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "Telescope", { bg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
