return {
'kdheepak/tabline.nvim',
  config = function()
    require'tabline'.setup {
        -- component_separators = '',
        -- section_separators = { left = '', right = '' },
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true, -- this shows devicons in buffer section
        show_bufnr = false,
        show_filename_only = false, -- shows base filename only instead of relative path in filename
        modified_icon = "+ ",
    }
  end,
  requires = {
    'hoob3rt/lualine.nvim',
    'kyazdani42/nvim-web-devicons'
   }
}
