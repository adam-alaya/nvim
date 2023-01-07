function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

    transparent_bg = true

    if transparent_bg then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "signcolumn", {bg = "none" })
        vim.api.nvim_set_hl(0, "TroubleNormal", {bg = "none" })
        vim.api.nvim_set_hl(0, "TroubleText", {bg = "none" })
    end
end

ColorMyPencils()
