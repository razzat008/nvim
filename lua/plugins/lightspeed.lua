ggandor/lightspeed.nvim

local setup, lightspeed = pcall(require, "lightspeed")
if not setup then
  print("couldn't load lightspeed")
	return
end
lightspeed.setup{}
