return {
  "rcarriga/nvim-dap-go",
  ft= "go",
	config = function()
		require("dap-go").setup()
	end,
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
}
