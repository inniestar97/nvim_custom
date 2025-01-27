-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

--[[
Set Neovim UI color scheme.
Current available color schemes: onedark, kanagawa, monokai, rose-pine.

Insert preferred color scheme in the `color_scheme` variable.
Color scheme is loaded at "Load color scheme" after settings sections, setup
must be called before loading.
--]]

local status_ok, color_scheme = pcall(require, 'monokai-pro')
if not status_ok then
  return
end

--[[
Color scheme settings:
For changes to the color scheme refer to the project instructions,
usually found in the README file of the git package.
--]]

-- Monokai Pro
-- loctvl842/monokai-pro.nvim
require("monokai-pro").setup {
	transparent_background = false,
	terminal_colors = true,
	devicons = true, -- highlight the icons of `nvim-web-devicons`
	styles = {
		comment = { italic = true },
		keyword = { italic = true }, -- any other keyword
		type = { italic = true }, -- (preferred) int, long, char, etc
		storageclass = { italic = true }, -- static, register, volatile, etc
		structure = { italic = true }, -- struct, union, enum, etc
		parameter = { italic = true }, -- parameter pass in function
		annotation = { italic = true },
		tag_attribute = { italic = true }, -- attribute of tag in reactjs
    },
    filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
    -- Enable this will disable filter option
    day_night = {
            enable = false, -- turn off by default
            day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
            night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
    },
    inc_search = "background", -- underline | background
    background_clear = {
            "float_win",
            "toggleterm",
            "telescope",
            -- "which-key",
            "renamer",
            "notify",
            -- "nvim-tree",
            "neo-tree",
            "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
    },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
    plugins = {
            bufferline = {
                    underline_selected = false,
                    underline_visible = false,
            },
            indent_blankline = {
                context_highlight = "default", -- default | pro
                context_start_underline = false,
            },
    },
--  ---@param c Colorscheme
--  override = function(c) end,
--  ---@param cs Colorscheme
--  ---@param p ColorschemeOptions
--  ---@param Config MonokaiProOptions
--  ---@param hp Helper
--  override = function(cs: Colorscheme, p: ColorschemeOptions, Config: MonokaiProOptions, hp: Helper) end,
}

--[[
Load color scheme:
Note: The instruction to load the color scheme may vary depending on the
package.
See the README of the color scheme (i.e. git package) for information, for
example: require('color_scheme').setup{}, vim.cmd('color_scheme')
--]]
require('monokai-pro').load()
--vim.cmd("colorscheme kanagawa")
--require('monokai').setup {}
--vim.cmd("colorscheme rose-pine")
