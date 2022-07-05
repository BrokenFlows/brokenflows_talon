from talon import Context, Module, actions, settings, ui, ctrl
from talon_plugins import eye_mouse, eye_zoom_mouse

mod = Module()

last_active = None

@mod.action_class
class Actions:
    def toggle_recent_mouse():
        """Toggles the most recent mouse mode"""
        global last_active
        # if not using zoom mouse, see if we meet the criteria for using control mouse
        if (eye_mouse.config.control_mouse or last_active == "control") and not eye_zoom_mouse.zoom_mouse.enabled:
            print("toggling control mouse")
            last_active = "control" # remember that we used control mouse recently
            actions.tracking.control_toggle(not eye_mouse.config.control_mouse)
        # default to using zoom mouse
        else:
            print("toggling zoom mouse")
            last_active = "zoom" # remember that we used zoom mouse recently
            actions.tracking.control_zoom_toggle(not eye_zoom_mouse.zoom_mouse.enabled)

    def switch_mouse():
        """Switches between the two mouse modes"""
        if not eye_mouse.config.control_mouse:
            actions.tracking.control_zoom_toggle(False)
            print("disabling zoom mouse")
            actions.tracking.control_toggle(True)
            print("enabling control mouse")
        else:
            actions.tracking.control_toggle(False)
            print("disabling control mouse")
            actions.tracking.control_zoom_toggle(True)
            print("enabling zoom mouse")


