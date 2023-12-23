local config = function()
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
      component_separators = '',
      section_separators = { left = '', right = '' },     },
		sections = {
			lualine_x = { "encoding", "filetype" },
			lualine_z = { "location" },
		},
    -- tabline = {
    -- lualine_a = {},
    -- lualine_b = {},
    -- lualine_c = { require'tabline'.tabline_buffers },
    -- lualine_x = { require'tabline'.tabline_tabs },
    -- lualine_y = {},
  -- }
})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}

