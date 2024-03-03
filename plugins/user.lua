return {
  { "folke/neodev.nvim" },
  { "milkypostman/vim-togglelist", lazy = false },
  {
    "github/copilot.vim",
    event = "BufEnter",
    init = function() vim.cmd "imap <silent><script><expr> <Right> copilot#Accept()" end,
  },
  {
    -- still the best git plugin
    "tpope/vim-fugitive",
    event = "User AstroGitFile",
    lazy = false,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require("lsp_signature").setup(opts) end,
  },
  {
    -- goto preview
    "rmagatti/goto-preview",
    commit = "9d130e91ea309255e79443aea522710949dedaf8",
    opts = {
      post_open_hook = function(curr_buff, curr_win)
        vim.api.nvim_buf_set_keymap(curr_buff, "n", "<Esc>", ":q<CR>", { noremap = true })
      end,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
            "vendor",
            "pb",
            "clientpb",
            ".git",
          },
        },
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup { "telescope" }
    end,
    lazy = false,
  },
  { "willothy/flatten.nvim", opts = function() return { window = { open = "alternate" } } end },
}
