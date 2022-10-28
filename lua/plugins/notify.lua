-- import lualine plugin safely
local status, notify = pcall(require, "notify")
if not status then
	print("notify not available ")
	return
end

notify.setup({
	-- timeout = 100,
})
