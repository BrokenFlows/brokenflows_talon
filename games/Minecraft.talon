app: java
-
settings():
    key_wait = 16.0
    key_hold = 16.0
tag(): user.generic_wasd

sprint:
	key(ctrl:down)
	key(w:down)
	sleep(20ms)
	key(ctrl:up)

jump: key(space)
swim: key(space:down)
land: key(space:up)

crouch: key(shift:down)
stand: key(shift:up)

touch:
	mouse_click(0:down)
	sleep(40ms)
	mouse_click(0:up)

righty:
	mouse_click(1:down)
	sleep(40ms)
	mouse_click(1:up)

strike:
	user.mouse_drag_left()

shield:
	user.mouse_drag_right()

release:
	user.mouse_release_left()
	user.mouse_release_right()

