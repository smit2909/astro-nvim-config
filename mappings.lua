return {
  n = {
    -- general keymaps
    ["n"] = { "nzzzv", desc = "Center cusor on search" },
    ["N"] = { "Nzzzv", desc = "Center cusor on search" },
    ["J"] = { "mzJ`z", desc = "Center cusor on search" },
    ["G"] = { "Gzz", desc = "Center cusor on search" },
    ["<F5>"] = { "<cmd>LspRestart<cr>", desc = "Restart language server" },

    -- git
    ["[c"] = { '<cmd>lua require"gitsigns.actions".prev_hunk()<cr>zz', desc = "Previous change" },
    ["]c"] = { '<cmd>lua require"gitsigns.actions".next_hunk()<cr>zz', desc = "Next change" },
    ["<leader>gs"] = { "<cmd>top G<cr>", desc = "Git status" },
    ["<leader>gc"] = { "<cmd>Git commit<cr>", desc = "Git commit" },
    ["<leader>gv"] = { "<cmd>Gvdiffsplit<cr>", desc = "Git diff split" },
    ["<leader>gb"] = { function() require("gitsigns").blame_line() end, desc = "Git blame" },

    -- quickfix list
    ["<C-q>"] = { ":call ToggleQuickfixList()<cr>", desc = "Toggle quick fix list" },
    ["gj"] = { "<cmd>cnext<cr>", desc = "Quick fix list next item" },
    ["gk"] = { "<cmd>cprev<cr>", desc = "Quick fix list prev item" },

    -- buffer movements
    ["]]"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["[["] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<leader>]"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<leader>["] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<leader>1"] = { function() require("astronvim.utils.buffer").nav_to(1) end, desc = "Buffer 1" },
    ["<leader>2"] = { function() require("astronvim.utils.buffer").nav_to(2) end, desc = "Buffer 2" },
    ["<leader>3"] = { function() require("astronvim.utils.buffer").nav_to(3) end, desc = "Buffer 3" },
    ["<leader>4"] = { function() require("astronvim.utils.buffer").nav_to(4) end, desc = "Buffer 4" },
    ["<leader>5"] = { function() require("astronvim.utils.buffer").nav_to(5) end, desc = "Buffer 5" },
    ["<leader>6"] = { function() require("astronvim.utils.buffer").nav_to(6) end, desc = "Buffer 6" },
    ["<leader>x"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close buffer" },
    ["qq"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close buffer" },

    -- Symbols outline
    ["<leader>tt"] = { function() require("aerial").toggle() end, desc = "Symbols outline" },

    -- neotree
    ["<leader>n"] = { "<cmd>Neotree toggle filesystem<cr>", desc = "Toggle Explorer" },
    ["<C-n>"] = { "<cmd>Neotree toggle filesystem<cr>", desc = "Toggle Explorer" },
    ["<leader>pv"] = { "<cmd>Neotree filesystem reveal<cr>", desc = "Reveal current file" },

    -- comment
    ["<leader>c<leader>"] = {
      function()
        require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or
          1)
      end,
      desc = "Comment line"
    },

    -- pickers & files
    ["<C-p>"] = { "<cmd>FzfLua files<cr>", desc = "Find all files" },
    ["<leader>fb"] = { "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
    ["<leader>fw"] = { "<cmd>FzfLua grep_project<cr>", desc = "Find words" },
    ["<C-f>"] = { "<cmd>FzfLua grep_curbuf<cr>", desc = "Find words" },
    ["<F-2>"] = { "<cmd>FzfLua help_tags<cr>", desc = "Find help" },
    ["<leader>ft"] = { "<cmd>FzfLua colorschemes<cr>", desc = "Find colorschemes" },
    ["<leader>ds"] = { "<cmd>AerialNavOpen<cr>", desc = "Aerial document symbols" },

    -- misc maps
    ["<C-t>"] = { "<cmd>ToggleTerm size=20 direction=horizontal<cr>", desc = "Toggle terminal" },
    ["<leader>e"] = { "<cmd>e ~/.config/neovide/config.toml<cr>", desc = "Edit neovide config" },
    ["<leader>vrc"] = { "<cmd>FzfLua files cwd=~/.config/nvim/lua/user<cr>", desc = "Astronvim user config" },
  },

  v = {
    -- general keymaps
    ["Y"] = { "y$", desc = "Better yank" },
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move selected lines up" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move selected lines down" },
    [">"] = { ">gv", desc = "Stay in visual mode after indent" },
    ["<"] = { "<gv", desc = "Stay in visual mode after indent" },
    ["<leader>p"] = { '"_dP', desc = "Better paste" },
    ["<leader>c<leader>"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Toggle comment line" },
    -- git
    ["<leader>hr"] = { function() require("gitsigns").reset_hunk { vim.fn.line ".", vim.fn.line "v" } end, desc = "Reset hunk" },
  },

  i = {
    [","] = { ",<c-g>u", desc = "Undo breakpoint" },
    ["."] = { ".<c-g>u", desc = "Undo breakpoint" },
    ["!"] = { "!<c-g>u", desc = "Undo breakpoint" },
    ["?"] = { "?<c-g>u", desc = "Undo breakpoint" },
  },

  t = {
    ["jj"] = { "<C-\\><C-n>", desc = "Esc in terminal" },
    ["<C-t>"] = { "<cmd>ToggleTerm size=20 direction=horizontal<cr>", desc = "Toggle terminal" },
    ["<C-l>"] = { "<C-l>" },
  },
}
