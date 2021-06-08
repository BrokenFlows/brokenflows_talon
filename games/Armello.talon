os: mac
and app.bundle: unity.League of Geeks.Armello
-
settings():
	speech.timeout = 0.1
tag(): user.generic_wasd

parrot(shush): user.mouse_drag()
parrot(shush:stop): user.mouse_drag()

face(pucker_lips_left):
	user.mouse_scroll_down_continuous()
face(pucker_lips_left:stop):
	user.mouse_scroll_stop()
face(pucker_lips_right):
	user.mouse_scroll_up_continuous()
face(pucker_lips_right:stop):
	user.mouse_scroll_stop()

