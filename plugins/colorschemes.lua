return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      dimInactive = true,
      transparent = false,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
    lazy = false,
  },
  { "ribru17/bamboo.nvim", lazy = false, priority = 1000 },
  {
    "svrana/neosolarized.nvim",
    config = function()
      require("neosolarized").setup {
        comment_italics = true,
        background_set = true,
      }
    end,
    dependencies = { "tjdevries/colorbuddy.nvim" },
  },
  { "craftzdog/solarized-osaka.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "sainnhe/gruvbox-material" },
}
