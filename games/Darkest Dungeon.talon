os: mac
and app.bundle: com.redhookgames.Darkest
-
settings():
	speech.timeout = 0.1

parrot(shush): user.mouse_drag()
parrot(shush:stop): user.mouse_drag()

parrot(click_alveolar): user.toggle_recent_mouse()

tog: user.toggle_recent_mouse()

