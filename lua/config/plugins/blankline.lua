return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},

    config = function()
	    require("ibl").setup {
		    scope = { show_start = false, show_end = false }
	    }
    end
}
