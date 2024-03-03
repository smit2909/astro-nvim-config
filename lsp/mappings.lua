return {
    n = {
        ["<leader>ws"] = { "<cmd>FzfLua lsp_live_workspace_symbols<cr>", desc = "Search workspace symbols" },
        ["<leader>ds"] = { "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Search document symbols" },
        ["<leader>wd"] = { "<cmd>FzfLua lsp_workspace_diagnostics<cr>", desc = "Search workspace diagnostics" },
        ["gr"] = { "<cmd>FzfLua lsp_references<cr>", desc = "References" },
        ["gi"] = { "<cmd>FzfLua lsp_implementations<cr>", desc = "Implementations" },
        ["gt"] = { "<cmd>FzfLua lsp_typedefs<cr>", desc = "Type definitions" },
        ["gE"] = { function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" },
        ["ge"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },
        ["gd"] = { function() vim.lsp.buf.definition() end, desc = "Show the definition of current symbol" },
        ["gp"] = { function() require("goto-preview").goto_preview_definition {} end, desc = "Show the definition of current symbol in preview" },
        ["gD"] = { function() vim.lsp.buf.declaration() end, desc = "Declaration of current symbol" },
        ["vrn"] = { function() vim.lsp.buf.rename() end, desc = "Rename current symbol" },
        ["<leader>cd"] = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
    }
}
