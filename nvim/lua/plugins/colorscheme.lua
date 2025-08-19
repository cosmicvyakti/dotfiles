-- local function enable_transparency()
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
--     vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
--     -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
--     -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
-- end


return {
    {
         "folke/tokyonight.nvim",
         lazy = false,
         priority = 1000,
         config = function()
             vim.cmd[[colorscheme tokyonight]]
             vim.cmd('hi Directory guibg=NONE')
             vim.cmd('hi SignColumn guibg=NONE')
             -- enable_transparency()
         end
     },
     { 
       "xiyaowong/transparent.nvim", 
       lazy = false, 
       opts = {
          extra_groups = {
            "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
            "NvimTreeNormal",
            "TelescopeNormal",
            "TelescopeBorder"
          },
       } 
     }
}

