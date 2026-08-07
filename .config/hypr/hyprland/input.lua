local vars = require("variables")

hl.config({
	input = {
		kb_layout = "us,th",
		kb_variant = "",
		kb_options = "grp:alt_shift_toggle",
		numlock_by_default = true,
		repeat_delay = 250,
		repeat_rate = 35,
		focus_on_close = 1,

		touchpad = {
			natural_scroll = true,
			disable_while_typing = vars.touchpadDisableTyping,
			scroll_factor = vars.touchpadScrollFactor,
		},

		accel_profile = "flat",
		sensitivity = 0.0,
		force_no_accel = true,
	},

	binds = {
		scroll_event_delay = 0,
	},

	cursor = {
		hotspot_padding = 1,
	},
})
