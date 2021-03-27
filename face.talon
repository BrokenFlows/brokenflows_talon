face(smile):
	print('smile start')

face(smile:end):
	print('smile end')

face(pucker_lips_left):
	print('pucker lips left')
	user.mouse_scroll_up_continuous()
face(pucker_lips_left:end):
	print('pucker lips left end')
	user.mouse_scroll_stop()
face(pucker_lips_right):
	print('pucker lips right')
	user.mouse_scroll_down_continuous()
face(pucker_lips_right:end):
	print('pucker lips right end')
	user.mouse_scroll_stop()

