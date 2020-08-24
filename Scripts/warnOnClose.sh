#! /bin/bash

# Disable FireFox 'warnOnClose'
Working_Directory=$(pwd)
cd /home/*/.mozilla/firefox/*-esr/
sed '54iuser_pref\(\"browser.tabs.warnOnClose\", false\)\;' prefs.js > prefs
rm prefs.js
mv prefs prefs.js
cd $Working_Directory
