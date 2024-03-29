require("telescope").setup({
	-- defaults = {
	-- 	preview = {
	-- 		mime_hook = function(filepath, bufnr, opts)
	-- 			local is_image = function(filepath)
	-- 				local image_extensions = { "png", "jpg" } -- Supported image formats
	-- 				local split_path = vim.split(filepath:lower(), ".", { plain = true })
	-- 				local extension = split_path[#split_path]
	-- 				return vim.tbl_contains(image_extensions, extension)
	-- 			end
	-- 			if is_image(filepath) then
	-- 				local term = vim.api.nvim_open_term(bufnr, {})
	-- 				local function send_output(_, data, _)
	-- 					for _, d in ipairs(data) do
	-- 						vim.api.nvim_chan_send(term, d .. "\r\n")
	-- 					end
	-- 				end
	-- 				vim.fn.jobstart({
	-- 					"catimg",
	-- 					filepath, -- Terminal image viewer command
	-- 				}, { on_stdout = send_output, stdout_buffered = true })
	-- 			else
	-- 				require("telescope.previewers.utils").set_preview_message(
	-- 					bufnr,
	-- 					opts.winid,
	-- 					"Binary cannot be previewed"
	-- 				)
	-- 			end
	-- 		end,
	-- 	},
	-- },
	extensions = {
		media_files = {
			-- filetypes whitelist
			-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
			filetypes = { "png", "webp", "jpg", "jpeg", "svg", "favico" },
			-- find command (defaults to `fd`)
			find_cmd = "rg",
		},
	},
})
