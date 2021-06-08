os: mac
and app.bundle: unity.NoBrakesGames.Human
-
settings():
    key_wait = 16.0
    key_hold = 16.0
tag(): user.generic_wasd

parrot(whistle:repeat): key(w:down)
parrot(whistle:stop): key(w:up)
#face(pucker_lips_left):
#	print('lips left')
#	user.mouse_cardinal_move_1d('left',500)
#face(pucker_lips_right):
#	print('lips right')
#	user.mouse_cardinal_move_1d('right',500)
#face(raise_eyebrows):
#	print('brows up')
#	user.mouse_cardinal_move_1d('up',500)
#face(smile):
#	print('smile')
#	user.mouse_cardinal_move_1d('down',500)

jump: key(space)
swim: key(space:down)
land: key(space:up)

fall: key(f)
names: key(v)

