return {
  -- {
  -- 	"craftzdog/solarized-osaka.nvim",
  -- 	branch = "osaka",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- 	opts = function()
  -- 		return {
  -- 			transparent = true,
  -- 		}
  -- 	end,
  -- 	config = function()
  -- 		vim.cmd.colorscheme "solarized-osaka"
  -- 	end,
  -- },

  -- {
  --   "GlennLeo/cobalt2",
  --   config = function()
  --     vim.cmd.colorscheme("cobalt2")
  --   end,
  -- },

  {
    "cocopon/iceberg.vim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("iceberg")
    end,
    colors = {
      -- ! special
      -- *.foreground:   #c6c8d1
      -- *.background:   #161821
      -- *.cursorColor:  #c6c8d1
      --
      -- ! black
      -- *.color0:       #1e2132
      -- *.color8:       #6b7089
      --
      -- ! red
      -- *.color1:       #e27878
      -- *.color9:       #e98989
      --
      -- ! green
      -- *.color2:       #b4be82
      -- *.color10:      #c0ca8e
      --
      -- ! yellow
      -- *.color3:       #e2a478
      -- *.color11:      #e9b189
      --
      -- ! blue
      -- *.color4:       #84a0c6
      -- *.color12:      #91acd1
      --
      -- ! magenta
      -- *.color5:       #a093c7
      -- *.color13:      #ada0d3
      --
      -- ! cyan
      -- *.color6:       #89b8c2
      -- *.color14:      #95c4ce
      --
      -- ! white
      -- *.color7:       #c6c8d1
      -- *.color15:      #d2d4de
    },
  },

  -- {
  --   "wadackel/vim-dogrun",
  --   config = function()
  --     vim.cmd.colorscheme "dogrun"
  --   end,
  --   -- colors = {
  --   --   foreground = '#9ea3c0',
  --   --   background = '#222433',
  --   --   cursor_fg = '#222433',
  --   --   cursor_bg = '#9ea3c0',
  --   --   selection_bg = '#363e7f',
  --   --   ansi = {
  --   --     '#111219',
  --   --     '#c2616b',
  --   --     '#7cbe8c',
  --   --     '#8e8a6f',
  --   --     '#4c89ac',
  --   --     '#6c75cb',
  --   --     '#73c1a9',
  --   --     '#9ea3c0',
  --   --   },
  --   --   brights = {
  --   --     '#545c8c',
  --   --     '#b871b8',
  --   --     '#7cbe8c',
  --   --     '#a8a384',
  --   --     '#589ec6',
  --   --     '#929be5',
  --   --     '#59b6b6',
  --   --     '#9ea3c0',
  --   --   },
  --   -- },
  -- },
}
