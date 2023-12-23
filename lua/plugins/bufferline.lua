return {
  'akinsho/bufferline.nvim',
  lazy = false ,
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    vim.opt.termguicolors = true
    require("bufferline").setup{
      options = {
        mode = 'buffers',
        -- diagnostics = 'coc',
        separator_style = "padded_slant" , -- [[ | "slope" | "thick" | "thin" | { 'any', 'any' }, ]]
        -- enforce_regular_tabs = false | true,
        numbers =  "ordinal", -- | "buffer_id" | "both",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = false,
            }
        },
    },
    }
  end
}

