os: mac
and app.bundle: com.berserk-games.tabletop-simulator
-
settings():
	speech.timeout = 0.1

parrot(shush): user.mouse_drag()
parrot(shush:stop): user.mouse_drag()

tog: user.toggle_recent_mouse()

face(pucker_lips_left):
	user.mouse_scroll_down_continuous()
face(pucker_lips_left:stop):
	user.mouse_scroll_stop()
face(pucker_lips_right):
	user.mouse_scroll_up_continuous()
face(pucker_lips_right:stop):
	user.mouse_scroll_stop()

