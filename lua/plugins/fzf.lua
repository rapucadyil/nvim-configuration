return {
  "ibhagwan/fzf-lua",
-- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },

  keys={
    { 
      "<leader>ff",
      function() 
        require('fzf-lua').files() 
      end, 
      desc="[F]ind [F]iles in the project directory" 
    },
    { 
      "<leader>fg",
      function() 
        require('fzf-lua').live_grep() 
      end, 
      desc="[F]ind by [G]repping project directory" 
    },
    { 
      "<leader>f,",
      function() 
        require('fzf-lua').files({ cwd = "~/.config/nvim/" }) 
      end, 
      desc="[F]ind [F]iles in the NVIM configuration directory" 
    },
    { 
      "<leader>g,",
      function() 
        require('fzf-lua').live_grep({ cwd = "~/.config/nvim/" }) 
      end, 
      desc="[F]ind by [G]repping in the NVIM configuration directory" 
    },
    { 
      "<leader>fc",
      function() 
        require('fzf-lua').colorschemes()
      end, 
      desc="[F]ind in installed [C]olorschemes" 
    },
    { 
      "<leader>fw",
      function() 
        require('fzf-lua').grep_cword()
      end, 
      desc="[F]ind the current [W]ord" 
    },
  },
  opts = {}
}
