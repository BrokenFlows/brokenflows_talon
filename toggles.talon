-
key(shift-f10):
	speech.toggle()
	user.toggle_recent_mouse()

key(shift-f11):
	core.repeat_command(1)

# changes the active mouse mode
(switch|witch) (mouse|miss):
	user.switch_mouse()

# toggles the most recent mouse mode
toggle (mouse|miss):
	user.toggle_recent_mouse()

(zoom exit|zoom cancel):
	tracking.zoom_cancel()

