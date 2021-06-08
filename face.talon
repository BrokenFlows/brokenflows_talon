os:mac
-
face(smile):
	print('smile start')

face(smile:stop):
	print('smile stop')

face(pucker_lips_left):
	print('pucker lips left')
	user.mouse_scroll_up_continuous()
face(pucker_lips_left:stop):
	print('pucker lips left stop')
	user.mouse_scroll_stop()
face(pucker_lips_right):
	print('pucker lips right')
	user.mouse_scroll_down_continuous()
face(pucker_lips_right:stop):
	print('pucker lips right stop')
	user.mouse_scroll_stop()

