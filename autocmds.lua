vim.api.nvim_create_autocmd("FileType", {
    pattern = { "proto", "javascript", "typescript" },
    group = vim.api.nvim_create_augroup("proto_tabs", { clear = true }),
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})
