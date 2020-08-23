#!/bin/bash

# Written by : Waking_Reality (https://github.com/Waking-Reality/)
#            : NebulousAnchor (https://github.com/NebulousAnchor/)

# ------------------------------------------------------------------------------
# INFORMATION
# ------------------------------------------------------------------------------

# FIREFOX EXTENSIONS DIRECTORY: /home/*/.mozilla/firefox/*/extensions/

# ------------------------------------------------------------------------------
# NAME:                                  ID:
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
# VARIABLES
# ------------------------------------------------------------------------------

CookieEditor=/home/*/.mozilla/firefox/*/extensions/{c3c10168-4186-445c-9c5b-63f12b8e2c87}.xpi
DisableJavascript=/home/*/.mozilla/firefox/*/extensions/{41f9e51d-35e4-4b29-af66-422ff81c8b41}.xpi
FoxyProxy=/home/*/.mozilla/firefox/*/extensions/foxyproxy@eric.h.jung.xpi
QRScanner=/home/*/.mozilla/firefox/*/extensions/qrscaner@laobubu.net.xpi
UASwitcher=/home/*/.mozilla/firefox/*/extensions/{a6c4a591-f1b2-4f03-b3ff-767e5bedf4e7}.xpi
Wappalyzer=/home/*/.mozilla/firefox/*/extensions/wappalyzer@crunchlabz.com.xpi
XForwardForHeader=/home/*/.mozilla/firefox/*/extensions/{9e00ccd0-bf33-4038-929d-833a4b8d723b}.xpi

# ------------------------------------------------------------------------------
# SCRIPT
# ------------------------------------------------------------------------------

#### BEGIN SCRIPT ####

echo -e '\e[1;31m'"{::\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\::}"'\e[0m'
echo -e '\e[1;31;43m'"DO NOT TOUCH MOUSE OR KEYBOARD DURING INSTALL!!!!"'\e[0m'
echo -e '\e[1;31m'"{::\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\::}"'\e[0m'

# Disable FireFox's "Warning on Close"

sed -i 's/user_pref("browser.tabs.warnOnClose", true);/user_pref("browser.tabs.warnOnClose", false);/g' /home/*/.mozilla/firefox/*-esr/prefs.js 2>/dev/null &
wait

# Cookie-Editor

if [ -e $CookieEditor ]
then
	echo -e  '\e[1;32m'"{::Cookie-Editor Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::Cookie-Editor \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing Cookie-Editor::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/2209736/cookie_editor-1.9.0-an+fx.xpi?src=dp-btn-primary 2>/dev/null &
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::Cookie-Editor Installed!::}"'\e[0m' &
	wait
fi

# Disable JavaScript
if [ -e $DisableJavascript ]
then
	echo -e  '\e[1;32m'"{::Disable JavaScript Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::Disable JavaScript \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing Disable JavaScript::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/1090623/disable_javascript-2.3.1-an+fx.xpi?src=dp-btn-primary 2>/dev/null &
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::Disable JavaScript Installed!::}"'\e[0m' &
	wait
fi

# FoxyProxy Standard
if [ -e $FoxyProxy ]
then
	echo -e  '\e[1;32m'"{::FoxyProxy Standard Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::FoxyProxy Standard \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing FoxyProxy Standard::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-7.5.1-an+fx.xpi?src=dp-btn-primary 2>/dev/null &
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::FoxyProxy Standard Installed!::}"'\e[0m' &
	wait
fi

# QRScanner
if [ -e $QRScanner ]
then
	echo -e  '\e[1;32m'"{::QRScanner Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::QRScanner \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing QRScanner::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/642981/qrcode_scanner-1.2.3-an+fx.xpi?src=dp-btn-primary 2>/dev/null &
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::QRScanner Installed!::}"'\e[0m' &
	wait
fi

# User-Agent Switcher and Manager
if [ -e $UASwitcher ]
then
	echo -e  '\e[1;32m'"{::User-Agent Switcher and Manager Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::User-Agent Switcher and Manager \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing User-Agent Switcher and Manager::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/3622799/user_agent_switcher_and_manager-0.4.1-an+fx.xpi?src=dp-btn-primary 2>/dev/null &
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::User-Agent Switcher and Manager Installed!::}"'\e[0m' &
	wait
fi

# Wappalyzer
if [ -e $Wappalyzer ]
then
	echo -e  '\e[1;32m'"{::Wappalyzer Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::Wappalyzer \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing Wappalyzer::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/3618861/wappalyzer-6.2.3-fx.xpi?src=dp-btn-primary 2>/dev/null &
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::Wappalyzer Installed!::}"'\e[0m' &
	wait
fi

# X-Forwarded-For Header
if [ -e $XForwardForHeader ]
then
	echo -e  '\e[1;32m'"{::X-Forwarded-For Header Already Installed!::}"'\e[0m'
else
	echo -e  '\e[1;31m'"{::X-Forwarded-For Header \e[1mNOT Installed!::}"'\e[0m' &
	sleep 2 && echo -e  '\e[1;33m'"{::Installing X-Forwarded-For Header::}"'\e[0m' &
	firefox https://addons.mozilla.org/firefox/downloads/file/3597612/x_forwarded_for_header-0.6.2-fx.xpi?src=dp-btn-primary 2>/dev/null & 
	sleep 30 && xdotool key alt+a && sleep 5 && xdotool key alt+o && sleep 5 && xdotool key ctrl+q &
	sleep 45 && echo -e  '\e[1;32m'"{::X-Forwarded-For Header Installed!::}"'\e[0m' &
	wait
fi

# Manual Verification
echo -e '\e[1;34m'"{::\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\::}"'\e[0m'
echo -e  '\e[1;97m'"Close Firefox when verification complete"'\e[0m'
echo -e '\e[1;34m'"{::\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\::}"'\e[0m'
firefox about:addons 2>/dev/null &
