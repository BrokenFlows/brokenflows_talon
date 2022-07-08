from talon import Context, Module, actions, settings, ui, ctrl

mod = Module()

tracking = actions.tracking

last_active = None

@mod.action_class
class Actions:
    def toggle_recent_mouse():
        """Toggles the most recent mouse mode"""
        global last_active
        # if not using zoom mouse, see if we meet the criteria for using control mouse
        if (tracking.control_enabled() or last_active == "control") and not tracking.control_zoom_enabled():
            print("toggling control mouse")
            last_active = "control" # remember that we used control mouse recently
            tracking.control_toggle(not tracking.control_enabled())
        # default to using zoom mouse
        else:
            print("toggling zoom mouse")
            last_active = "zoom" # remember that we used zoom mouse recently
            tracking.control_zoom_toggle(not tracking.control_zoom_enabled())

    def switch_mouse():
        """Switches between the two mouse modes"""
        if not tracking.control_enabled():
            tracking.control_zoom_toggle(False)
            print("disabling zoom mouse")
            tracking.control_toggle(True)
            print("enabling control mouse")
        else:
            tracking.control_toggle(False)
            print("disabling control mouse")
            tracking.control_zoom_toggle(True)
            print("enabling zoom mouse")


