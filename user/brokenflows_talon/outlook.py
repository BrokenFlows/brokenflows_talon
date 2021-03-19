from talon import Context, Module, actions, imgui, settings, ui
import os
import subprocess

mod = Module()
mod.apps.outlook = """
os: windows
and app: Outlook
os: windows
and app.exe: OUTLOOK.EXE
"""
