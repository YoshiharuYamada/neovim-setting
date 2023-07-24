local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	hidden = true
})

function _lazygit_toggle()
	lazygit:toggle()
end

local irb = Terminal:new({
	cmd = "irb",
	direction = "float",
	hidden = true
})

function _irb_toggle()
	irb:toggle()
end
-- ' lg'でlazygitを起動
vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
-- ' irb'でirbを起動
vim.api.nvim_set_keymap("n", "<leader>irb", "<cmd>lua _irb_toggle()<CR>", { noremap = true, silent = true })
