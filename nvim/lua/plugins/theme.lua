-- local M = {
-- 	"rose-pine/neovim",
-- 	lazy = false,
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
-- 	require("rose-pine").setup({
-- 		variant = "main",
-- 		dark_variant = "main",
-- 		dim_inactive_windows = false,
-- 		extend_background_behind_borders = true,
--
-- 		styles = {
-- 			bold = true,
-- 			italic = true,
-- 			transparency = false,
-- 		},
--
-- 		groups = {
-- 			border = "muted",
-- 			link = "iris",
-- 			panel = "surface",
-- 			comment = "muted",
-- 			punctuation = "subtle",
-- 			error = "love",
-- 			hint = "iris",
-- 			info = "foam",
-- 			warn = "gold",
-- 		},
--
-- 		highlight_groups = {
-- 			-- Zed-specific syntax mappings based on their theme
-- 			Comment = { fg = "muted", italic = true },
-- 			Constant = { fg = "text" },
-- 			String = { fg = "gold" },
-- 			Character = { fg = "gold" },
-- 			Number = { fg = "foam" },
-- 			Boolean = { fg = "rose" },
-- 			Float = { fg = "foam" },
--
-- 			Identifier = { fg = "text" },
-- 			Function = { fg = "rose" },
-- 			Statement = { fg = "pine" },
-- 			Conditional = { fg = "pine" },
-- 			Repeat = { fg = "pine" },
-- 			Label = { fg = "rose" },
-- 			Operator = { fg = "subtle" },
-- 			Keyword = { fg = "pine" },
-- 			Exception = { fg = "pine" },
--
-- 			PreProc = { fg = "gold" },
-- 			Include = { fg = "pine" },
-- 			Define = { fg = "gold" },
-- 			Macro = { fg = "gold" },
-- 			PreCondit = { fg = "gold" },
--
-- 			Type = { fg = "foam" },
-- 			StorageClass = { fg = "foam" },
-- 			Structure = { fg = "foam" },
-- 			Typedef = { fg = "foam" },
--
-- 			Special = { fg = "rose" },
-- 			SpecialChar = { fg = "gold" },
-- 			Tag = { fg = "iris" },
-- 			Delimiter = { fg = "subtle" },
-- 			SpecialComment = { fg = "subtle" },
-- 			Debug = { fg = "rose" },
--
-- 			-- Treesitter mappings for enhanced alignment with Zed
-- 			["@attribute"] = { fg = "subtle" },
-- 			["@boolean"] = { fg = "rose" },
-- 			["@character"] = { fg = "gold" },
-- 			["@comment"] = { fg = "muted", italic = true },
-- 			["@conditional"] = { fg = "pine" },
-- 			["@constant"] = { fg = "text" },
-- 			["@constant.builtin"] = { fg = "foam" },
-- 			["@constant.macro"] = { fg = "foam" },
-- 			["@constructor"] = { fg = "love" },
-- 			["@error"] = { fg = "love" },
-- 			["@exception"] = { fg = "pine" },
-- 			["@field"] = { fg = "text" },
-- 			["@float"] = { fg = "foam" },
-- 			["@function"] = { fg = "rose" },
-- 			["@function.builtin"] = { fg = "rose" },
-- 			["@function.macro"] = { fg = "rose" },
-- 			["@include"] = { fg = "pine" },
-- 			["@keyword"] = { fg = "pine" },
-- 			["@keyword.function"] = { fg = "pine" },
-- 			["@keyword.operator"] = { fg = "subtle" },
-- 			["@keyword.return"] = { fg = "pine" },
-- 			["@label"] = { fg = "rose" },
-- 			["@method"] = { fg = "rose" },
-- 			["@namespace"] = { fg = "foam" },
-- 			["@number"] = { fg = "foam" },
-- 			["@operator"] = { fg = "subtle" },
-- 			["@parameter"] = { fg = "text" },
-- 			["@parameter.reference"] = { fg = "text" },
-- 			["@property"] = { fg = "text" },
-- 			["@punctuation.bracket"] = { fg = "subtle" },
-- 			["@punctuation.delimiter"] = { fg = "subtle" },
-- 			["@punctuation.special"] = { fg = "pine" },
-- 			["@repeat"] = { fg = "pine" },
-- 			["@string"] = { fg = "gold" },
-- 			["@string.escape"] = { fg = "gold" },
-- 			["@string.regex"] = { fg = "gold" },
-- 			["@string.special"] = { fg = "pine" },
-- 			["@symbol"] = { fg = "pine" },
-- 			["@tag"] = { fg = "iris" },
-- 			["@tag.attribute"] = { fg = "rose" },
-- 			["@tag.delimiter"] = { fg = "subtle" },
-- 			["@type"] = { fg = "foam" },
-- 			["@type.builtin"] = { fg = "foam" },
-- 			["@variable"] = { fg = "text" },
-- 			["@variable.builtin"] = { fg = "foam" },
--
-- 			-- LSP semantic tokens
-- 			["@lsp.type.class"] = { fg = "foam" },
-- 			["@lsp.type.comment"] = { fg = "muted", italic = true },
-- 			["@lsp.type.decorator"] = { fg = "rose" },
-- 			["@lsp.type.enum"] = { fg = "foam" },
-- 			["@lsp.type.enumMember"] = { fg = "foam" },
-- 			["@lsp.type.function"] = { fg = "rose" },
-- 			["@lsp.type.interface"] = { fg = "foam" },
-- 			["@lsp.type.macro"] = { fg = "pine" },
-- 			["@lsp.type.method"] = { fg = "rose" },
-- 			["@lsp.type.namespace"] = { fg = "foam" },
-- 			["@lsp.type.parameter"] = { fg = "text" },
-- 			["@lsp.type.property"] = { fg = "text" },
-- 			["@lsp.type.struct"] = { fg = "foam" },
-- 			["@lsp.type.type"] = { fg = "foam" },
-- 			["@lsp.type.typeParameter"] = { fg = "foam" },
-- 			["@lsp.type.variable"] = { fg = "text" },
--
-- 			-- UI elements to match Zed
-- 			CursorLine = { bg = "surface" },
-- 			LineNr = { fg = "muted" },
-- 			CursorLineNr = { fg = "text" },
-- 			VertSplit = { fg = "surface", bg = "surface" },
--
-- 			-- Interface components
-- 			TelescopeNormal = { bg = "base" },
-- 			TelescopeBorder = { fg = "subtle", bg = "base" },
-- 			NormalFloat = { bg = "surface" },
-- 			FloatBorder = { fg = "surface", bg = "surface" },
--
-- 			-- Status line
-- 			StatusLine = { fg = "subtle", bg = "surface" },
-- 			StatusLineNC = { fg = "muted", bg = "surface" },
--
-- 			-- Specific highlights to match your previous config
-- 			TelescopeBorder = { fg = "love" },
-- 			TSKeywordFunction = { fg = "pine" },
-- 			TSPunctSpecial = { fg = "pine" },
-- 			TSKeyword = { fg = "pine" },
-- 			TSConditional = { fg = "gold" },
-- 			TSKeywordReturn = { fg = "gold" },
-- 			TSRepeat = { fg = "gold" },
-- 			TSInclude = { fg = "pine" },
-- 			javascriptTSInclude = { fg = "pine" },
-- 			goTSInclude = { fg = "pine" },
-- 		},
--
-- 		-- Updated colors with darker midnight blueish gray background
-- 		colors = {
-- 			base = "#0d1117", -- darker midnight blue background
-- 			surface = "#161b22", -- darker surface background with blue tint
-- 			overlay = "#1f2937", -- darker overlay background
-- 			muted = "#6e6a86", -- muted text
-- 			subtle = "#908caa", -- subtle text
-- 			text = "#fff", -- main text
-- 			love = "#eb6f92", -- red
-- 			gold = "#fff", -- yellow/orange
-- 			rose = "#ebbcba", -- subtle rose/cyan
-- 			pine = "#31748f", -- green/teal
-- 			foam = "#9ccfd8", -- blue/cyan
-- 			iris = "#c4a7e7", -- purple
--
-- 			-- Additional colors for specific UI elements
-- 			highlight_low = "#1e293b", -- darker with blue tint
-- 			highlight_med = "#334155", -- darker medium highlight
-- 			highlight_high = "#475569", -- darker high highlight
-- 		},
-- 	})
--
-- 	vim.cmd("colorscheme rose-pine")
-- end
--
-- return M

-- -- return {
-- -- 	"rose-pine/neovim",
-- -- 	name = "rose-pine-moon",
-- -- 	config = function()
-- -- 		vim.cmd("colorscheme rose-pine-moon") end,
-- -- }
local M = {
	"neanias/everforest-nvim",
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
	local everforest = require("everforest")
	everforest.setup({
		background = "hard",
		-- transparent_background_level = 2,
		italics = true,
		disable_italic_comments = false,
		on_highlights = function(hl, _)
			hl.TelescopeBorder = { link = "Blue" }
			hl.TSKeywordFunction = { link = "Green" }
			-- hl.TSMethod = { link = "Green" }
			-- hl.TSFunction = { link = "Green" }
			-- hl.TSField = { link = "Green" }
			-- hl.TSProperty = { link = "Green" }
			hl.TSPunctSpecial = { link = "Green" }
			hl.TSKeyword = { link = "Green" }
			hl.TSConditional = { link = "Orange" }
			hl.TSKeywordReturn = { link = "Orange" }
			hl.TSRepeat = { link = "Orange" }
			hl.TSInclude = { link = "Green" }
			hl.javascriptTSInclude = { link = "Green" }
			hl.goTSInclude = { link = "Green" }
			hl["@lsp.type.class"] = { link = "Green" }
		end,
		colours_override = function(palette)
			palette.orange = "#FAAF4A"
			palette.red = "#E67E80"
			palette.aqua = "#FBE6BC"
			palette.blue = "#8DB5BC"
			palette.purple = "#C7A4E0"
			palette.green = "#92BF8D"
			palette.yellow = "#E8EF80"
			palette.fg = "#FBE6BC"
			palette.bg0 = "#232A2E"
		end,
	})
	everforest.load()
end

return M
