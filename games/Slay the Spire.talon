os: mac
and app.bundle: net.java.openjdk.cmd
-
settings():
	speech.timeout = 0.1

parrot(click_palatal):
	core.repeat_command(1)

parrot(shush): user.mouse_drag()
parrot(shush:stop): user.mouse_drag()

parrot(click_alveolar): user.toggle_recent_mouse()

tog: user.toggle_recent_mouse()

