local setup, coderunner = pcall(require, "code_runner")
if not setup then
	print("code runner not found")
	return
end

coderunner.setup({})
