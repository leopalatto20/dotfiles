return {
  { "rebelot/kanagawa.nvim" },
	{ "EdenEast/nightfox.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
	{
	"craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
	}
}
