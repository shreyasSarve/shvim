local config = function()
    require("ibl").setup() 
end
return
{
  "lukas-reineke/indent-blankline.nvim", 
    lazy = false,
    main = "ibl", 
   opts = {} ,
   config = config
}
