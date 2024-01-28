return {
{
    'numToStr/Comment.nvim',
    opts = {
      },
    lazy = false,
    config = function ()
	    require('Comment').setup({
		    toggler = {
        		line = 'gcc',
        		block = 'gbc',
    }
	    })
    end

}

}
