-- Force transparent background to match Alacritty + Picom
local autocmd = vim.api.nvim_create_autocmd

autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", ctermbg = "none" })
  end,
})

-- Disable code completion popups and enable prose settings for journaling
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "journal", "gitcommit" },
  callback = function()
    -- Disable nvim-cmp autocompletion popup in current buffer
    local ok_cmp, cmp = pcall(require, "cmp")
    if ok_cmp then
      cmp.setup.buffer({ enabled = false })
    end

    -- Disable completion for blink.cmp (newer LazyVim default)
    vim.b.completion = false

    -- Enable word wrapping and spellcheck for prose
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
