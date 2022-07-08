from talon import Context, Module, actions, settings, ui, ctrl

mod = Module()

last_active = None

@mod.action_class
class Actions:
    def toggle_recent_mouse():
        """Toggles the most recent mouse mode"""
        global last_active
        # if not using zoom mouse, see if we meet the criteria for using control mouse
        if (actions.tracking.control_enabled() or last_active == "control") and not actions.tracking.control_zoom_enabled():
            print("toggling control mouse")
            last_active = "control" # remember that we used control mouse recently
            actions.tracking.control_toggle(not actions.tracking.control_enabled())
        # default to using zoom mouse
        else:
            print("toggling zoom mouse")
            last_active = "zoom" # remember that we used zoom mouse recently
            actions.tracking.control_zoom_toggle(not actions.tracking.control_zoom_enabled())

    def switch_mouse():
        """Switches between the two mouse modes"""
        if not actions.tracking.control_enabled():
            actions.tracking.control_zoom_toggle(False)
            print("disabling zoom mouse")
            actions.tracking.control_toggle(True)
            print("enabling control mouse")
        else:
            actions.tracking.control_toggle(False)
            print("disabling control mouse")
            actions.tracking.control_zoom_toggle(True)
            print("enabling zoom mouse")


