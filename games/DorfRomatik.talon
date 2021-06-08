os: mac
and app.bundle: com.parallels.desktop.console
-
settings():
    key_hold = 16.0
	speech.timeout = 0.1
tag(): user.generic_wasd

flip: key(f)
rotate: key(r)

face(smile):
	key(r:down)
face(smile:stop):
	key(r:up)
face(scrunch_nose):
	key(f:down)
face(scrunch_nose:stop):
	key(f:up)

