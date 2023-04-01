local present, mpreview = pcall(require,"peek")

if not present then
	return
end

local options = {
	filetype = {"markdown"},
	app = 'webview',
	auto_load = 'true',
	close_on_bdelete = 'true',
}

mpreview.setup(options)
