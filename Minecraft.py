from talon import Context, Module, actions, imgui, settings, ui, ctrl
import os
import subprocess

mod = Module()
mod.apps.java = """
app: java
"""

@mod.action_class
class Actions:
    def mouse_drag_left():
        """continuously hold the left mouse button"""
        ctrl.mouse_click(button=0, down=True)

    def mouse_drag_right():
        """continuously hold the right mouse button"""
        ctrl.mouse_click(button=1, down=True)

    def mouse_release_left():
        """release both mouse buttons"""
        ctrl.mouse_click(button=0, down=False, up=True)

    def mouse_release_right():
        """release both mouse buttons"""
        ctrl.mouse_click(button=1, down=False, up=True)

