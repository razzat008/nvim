local present, alpha = pcall(require, "alpha")

if not present then
	print("alpha was not loaded")
	return
end
alpha.setup = {
	header = {
		type = "text",
		val = {
			[[      █████ ██████████    ]],
			[[    ████▌█████▌█ ████████▐▀██▀    ]],
			[[  ▄█████ █████▌ █ ▀██████▌█▄▄▀▄   ]],
			[[  ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀  ]],
			[[ ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█      ]],
			[[   ███ ▌▄█▌  ▀  ▀██  ▀██████▌     ]],
			[[    ▀█▌▀██▀ ▄         ███▐███     ]],
			[[     ██▌             ▐███████▌    ]],
			[[     ███     ▀█▀     ▐██▐███▀▌    ]],
			[[     ▌█▌█▄         ▄▄████▀ ▀      ]],
			[[       █▀██▄▄▄ ▄▄▀▀▒█▀█           ]],
		},
		opts = {
			position = "center",
			hl = "AlphaHeader",
		},
	},
}
