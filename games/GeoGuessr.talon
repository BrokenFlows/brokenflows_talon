os: mac
and win.title: /GeoGuessr/
-
face(pucker_lips_outwards): key(w:down)
face(pucker_lips_outwards:stop): key(w:up)
face(pucker_lips_left): key(a:down)
face(pucker_lips_left:stop): key(a:up)
face(pucker_lips_right): key(d:down)
face(pucker_lips_right:stop): key(d:up)

parrot(shush): user.mouse_drag()
parrot(shush:stop): user.mouse_drag()

face(raise_eyebrows): 
	user.mouse_scroll_up_continuous()
face(raise_eyebrows:stop): 
	user.mouse_scroll_stop()
face(open_mouth): 
	user.mouse_scroll_down_continuous()
face(open_mouth:stop): 
	user.mouse_scroll_stop()

