mkdir ~/.config/nvim/lua/plugins/syntax-tree-surfer

cat <<EOF >~/.config/nvim/lua/plugins/syntax-tree-surfer/init.lua
return {
    {
        "ziontee113/syntax-tree-surfer",
        opts = {
            noremap = true,
            silent = true
        },
        keys = {
            -- Normal Mode Swapping:
            -- Swap The Master Node relative to the cursor with it's siblings, Dot Repeatable
            { "n", "vU", function()
                vim.opt.opfunc = "v:lua.STSSwapUpNormal_Dot"
                return "g@l"
            end, { silent = true, expr = true } },
            { "n", "vD", function()
                vim.opt.opfunc = "v:lua.STSSwapDownNormal_Dot"
                return "g@l"
            end, { silent = true, expr = true } },
            -- Swap Current Node at the Cursor with it's siblings, Dot Repeatable
            { "n", "vd", function()
                vim.opt.opfunc = "v:lua.STSSwapCurrentNodeNextNormal_Dot"
                return "g@l"
            end, { silent = true, expr = true } },
            { "n", "vu", function()
                vim.opt.opfunc = "v:lua.STSSwapCurrentNodePrevNormal_Dot"
                return "g@l"
            end, { silent = true, expr = true } },
            -- Visual Selection from Normal Mode
            { "n", "vx", "<cmd>STSSelectMasterNode<cr>", opts },
            { "n", "vn", "<cmd>STSSelectCurrentNode<cr>", opts },
            -- Select Nodes in Visual Mode
            { "x", "J", "<cmd>STSSelectNextSiblingNode<cr>", opts },
            { "x", "K", "<cmd>STSSelectPrevSiblingNode<cr>", opts },
            { "x", "H", "<cmd>STSSelectParentNode<cr>", opts },
            { "x", "L", "<cmd>STSSelectChildNode<cr>", opts },
            -- Swapping Nodes in Visual Mode
            { "x", "<A-j>", "<cmd>STSSwapNextVisual<cr>", opts },
            { "x", "<A-k>", "<cmd>STSSwapPrevVisual<cr>", opts }
        },
    },
}
EOF

echo "plugin 설치 완료"
