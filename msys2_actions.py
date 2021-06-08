from talon import Context, actions
ctx = Context()
ctx.matches = r"""
app: mintty
app: MSYS2 terminal
app: Terminal
os: Windows
"""

@ctx.action_class('user')
class UserActions:
    def file_manager_open_parent():
        actions.insert('cd ..')
        actions.key('enter')

@ctx.action_class('edit')
class EditActions:
    def paste():       actions.key('shift-insert')
    def copy():        actions.key('ctrl-insert')
    
    def delete_line(): actions.key('ctrl-u')
