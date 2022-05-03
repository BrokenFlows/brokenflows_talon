from talon import Context, Module, actions, settings, ui, ctrl
from talon_plugins import eye_mouse, eye_zoom_mouse
from talon_plugins.eye_mouse import config, toggle_control

mod = Module()

last_active = None

@mod.action_class
class Actions:
    def toggle_recent_mouse():
        """Toggles the most recent mouse mode"""
        global last_active
        # if not using zoom mouse, see if we meet the criteria for using control mouse
        if (config.control_mouse or last_active == "control") and not eye_zoom_mouse.zoom_mouse.enabled:
            print("toggling control mouse")
            last_active = "control" # remember that we used control mouse recently
            toggle_control(not config.control_mouse)
        # default to using zoom mouse
        else:
            print("toggling zoom mouse")
            last_active = "zoom" # remember that we used zoom mouse recently
            eye_zoom_mouse.toggle_zoom_mouse(not eye_zoom_mouse.zoom_mouse.enabled)

    def switch_mouse():
        """Switches between the two mouse modes"""
        if not config.control_mouse:
            eye_zoom_mouse.toggle_zoom_mouse(False)
            print("disabling zoom mouse")
            toggle_control(True)
            print("enabling control mouse")
        else:
            toggle_control(False)
            print("disabling control mouse")
            eye_zoom_mouse.toggle_zoom_mouse(True)
            print("enabling zoom mouse")


