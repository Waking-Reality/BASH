#! /bin/bash

# ------------------------------------------------------------------------------
# INFORMATION
# ------------------------------------------------------------------------------

# FIREFOX EXTENSIONS DIRECTORY: /home/*/.mozilla/firefox/*/extensions/

# Tested on Kali Linux.

# ------------------------------------------------------------------------------
# NAME:                                   ID:
# ------------------------------------------------------------------------------
# Cookie-Editor				{c3c10168-4186-445c-9c5b-63f12b8e2c87}
# Disable JavaScript			{41f9e51d-35e4-4b29-af66-422ff81c8b41}
# FoxyProxy Standard			foxyproxy@eric.h.jung
# QRScanner				qrscaner@laobubu.net
# User-Agent Switcher and Manager	{a6c4a591-f1b2-4f03-b3ff-767e5bedf4e7}
# Wappalyzer				wappalyzer@crunchlabz.com
# X-Forwarded-For Header		{9e00ccd0-bf33-4038-929d-833a4b8d723b}
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# SCRIPT
# ------------------------------------------------------------------------------

# Cookie-Editor
firefox https://addons.mozilla.org/firefox/downloads/file/2209736/cookie_editor-1.9.0-an+fx.xpi?src=dp-btn-primary &
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# Disable JavaScript
firefox https://addons.mozilla.org/firefox/downloads/file/1090623/disable_javascript-2.3.1-an+fx.xpi?src=dp-btn-primary &
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# FoxyProxy Standard
firefox https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-7.5.1-an+fx.xpi?src=dp-btn-primary &
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# QRScanner
firefox https://addons.mozilla.org/firefox/downloads/file/642981/qrcode_scanner-1.2.3-an+fx.xpi?src=dp-btn-primary &
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# User-Agent Switcher and Manager
firefox https://addons.mozilla.org/firefox/downloads/file/3622799/user_agent_switcher_and_manager-0.4.1-an+fx.xpi?src=dp-btn-primary &
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# Wappalyzer
firefox https://addons.mozilla.org/firefox/downloads/file/3618861/wappalyzer-6.2.3-fx.xpi?src=dp-btn-primary &
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# X-Forwarded-For Header
firefox https://addons.mozilla.org/firefox/downloads/file/3597612/x_forwarded_for_header-0.6.2-fx.xpi?src=dp-btn-primary & 
sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
wait

# Manual Verification
firefox about:addons
