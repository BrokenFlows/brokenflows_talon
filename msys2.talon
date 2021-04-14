app: mintty
app: MSYS2 terminal
app: Terminal
os: Windows
-
tag(): terminal
tag(): user.file_manager
tag(): user.generic_terminal
tag(): user.git
tag(): user.kubectl

move: 
	key(m v)
	key(space)

action(user.file_manager_open_parent):
    insert("cd ..")
    key(enter)

action(edit.paste): key(shift-insert)
action(edit.copy): key(ctrl-insert)

action(edit.delete_line): key(ctrl-u)

capeesh: key(c e)

