return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                        ]],
			[[                                                                        ]],
			[[                                                                        ]],
			[[                                 ▟█▙                                    ]],
			[[                                ▟███▙                                   ]],
			[[                               ▟█████▙                                  ]],
			[[                              ▟███████▙                                 ]],
			[[                             ▂▔▀▜██████▙                                ]],
			[[                            ▟██▅▂▝▜█████▙                               ]],
			[[                           ▟█████████████▙                              ]],
			[[                          ▟███████████████▙                             ]],
			[[                         ▟█████████████████▙                            ]],
			[[                        ▟███████████████████▙                           ]],
			[[                       ▟█████████▛▀▀▜████████▙                          ]],
			[[                      ▟████████▛      ▜███████▙                         ]],
			[[                     ▟█████████        ████████▙                        ]],
			[[                    ▟██████████        █████▆▅▄▃▂                       ]],
			[[                   ▟██████████▛        ▜█████████▙                      ]],
			[[                  ▟██████▀▀▀              ▀▀██████▙                     ]],
			[[                 ▟███▀▘                       ▝▀███▙                    ]],
			[[                ▟▛▀                               ▀▜▙                   ]],
			[[                                                                        ]],
			[[                                                                        ]],
			[[                                                                        ]],
		}

		vim.cmd("highlight AlphaHeader guibg=NONE")
		vim.cmd("highlight AlphaNormal guibg=NONE")
		vim.cmd("highlight AlphaFooter guibg=NONE")
		vim.cmd("highlight AlphaButton guibg=NONE")

		-- Custom Header Highlight
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#1793D1", bg = "NONE", bold = true })
		dashboard.section.header.opts = {
			position = "center",
			hl = "AlphaHeader",
		}
		alpha.setup(dashboard.opts)
	end,
}
