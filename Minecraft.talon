app: java
-
settings():
    key_wait = 16.0
    key_hold = 16.0

north:
	key(s:up)
	key(w:down)
east:
	key(a:up)
	key(d:down)
south:
	key(w:up)
	key(s:down)
west:
	key(d:up)
	key(a:down)

due north:
	key(a:up)
	key(s:up)
	key(d:up)
	key(w:down)
due east:
	key(w:up)
	key(a:up)
	key(s:up)
	key(d:down)
due south:
	key(w:up)
	key(a:up)
	key(d:up)
	key(s:down)
due west:
	key(w:up)
	key(s:up)
	key(d:up)
	key(a:down)

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

stop:
	key(w:up)
    key(d:up)
    key(s:up)
    key(a:up)

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

