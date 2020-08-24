# secure-miui-12-bloatwares
Script to remove pre-installed apps from Xiaomi MIUI 11 & 12 for a better privacy.

## Why
Because my Xiaomi's phone is always speaking to Chineese servers (telemetry and so on), even if I desactivate all Xiaomi services.<br/>
For example, each time I lock my phone, it sends a request to "data.mistat.intl.xiaomi.com".<br/>
I can see a lot of requests to "fr.app.chat.global.xiaomi.net", "resolver.msg.global.xiaomi.net", etc...<br/>
Xiaomi have installed on their phones pre-installed apps called bloatwares, and even the most useless apps talk to their servers :<br/>
 - Calculator
 - Downloads
 - DeskClock
 - FileExplorerGlobal
 - GuardProvider
 - MiuiScreenRecorder
 - MiuiVideoPlayer
 - SystemAppUpdater
 - ...

As an example, if I analyse the source code from the Mi Calculator apk with a disassembly method (Android Debug Bridge, Dex2Jar, CFR Java Decompiler), I can see the following data provided as header:

 - The phone’s model (“Xiaomi Mi 9 SE”)
 - The current android OS
 - The current SIM operator
 - Device ID (which is IMEI in fact)
 - Current phone’s resolution
 - And a lot of web services called from the app...


## Backup your phone (important)
Please do some backups before going to execute the script.
In some cases depending on your settings, you can definitly crash the Mi UI. 
If it happens, you'll find an infinite loop with a logo "just a sec". Then, go to the settings menu and restore your device with the appropriate button.

On my example, I have fresh Miui 11/12 (EU) on a Xiaomi Mi 9 SE.

## Steps
Clone the repo, add the execute permission on the file, download "adb" on your computer, put your phone in the debug mode (via developper menu), comment / uncomment lines depending on your needs and excute it.
To understand which packages to keep or uninstall, please read the informations below :

| **Package** | **What is it** |
| --- | --- |
| android.autoinstalls.config.Xiaomi.persus | This app allows OEMs to install certain predefined apps on user device on first setup after a Google account has been added on initial setup screen. If account setup is skipped, these apps are auto-installed whenever a user adds a Google account. |
| com.android.browser | Xiaomi browser (aka skinned UC browser with ads) |
| com.xiaomi.calendar | Mi Calendar |
| com.android.chrome | Google chrome |
| com.miui.soundrecorder | MI screen recorder |
| com.facebook.services | Facebook services (why is this a system privilaged process) |
| com.facebook.system | Facebook system |
| com.facebook.appmanager | Facebook app manager (no i don&#39;t want fb to monitor everything) |
| com.google.android.apps.docs | Google Drive |
| com.google.android.apps.maps | Google Maps |
| com.google.android.apps.photos | Google photos |
| com.google.android.apps.tachyon | Google Duo |
| com.google.android.gm | Google Gmail |
| com.google.android.videos | Google play movies and tv |
| com.google.android.music | Google play music |
| com.google.android.youtube | Google Youtube |
| com.mi.android.globalFileexplorer | MI File Manager |
| com.mi.android.globalpersonalassistant | MIUI Global assistant / App vault |
| com.miui.analytics | Analytics |
| com.miui.bugreport | MIUI bug report |
| com.miui.calculator | Calculator |
| com.miui.cleanmaster | MI system cleaner |
| com.miui.cloudservice | MIUI cloud service (if you don't want to see your datas on a Chineese cloud server) |
| com.miui.cloudbackup | MIUI cloud backup |
| com.miui.compass | MI compass |
| com.miui.daemon | MiuiDaemon |
| com.miui.hybrid | MI hybrid Quick Apps |
| com.miui.msa.global | MSA |
| com.miui.notes | MI notes app |
| com.miui.player | MI Music player |
| com.miui.screenrecorder | MI screen recorder |
| com.miui.videoplayer | MI video player |
| com.miui.weather2 | MI weather |
| com.miui.yellowpage | MI yellowpage |
| com.xiaomi.glgm | Games |
| com.xiaomi.midrop | MI Drop (file sharing just like shareit) |
| com.xiaomi.mipicks | Xiaomi picks |
| com.xiaomi.mirecycle | Mi recycle |
| com.xiaomi.payment | Mi Credit |
| com.xiaomi.scanner | MI scanner (camscan can do this better) |
| com.xiaomi.xmsf | Telemtry/tracker [https://thelibreguy.wordpress.com/2016/10/16/xiaomi-trackers-and-backdoors-update/](https://thelibreguy.wordpress.com/2016/10/16/xiaomi-trackers-and-backdoors-update/) |

## Optional: Block DNS (non-root method)

For this method, you will require adb installed on it.
1. Connect your device to your computer via USB (make sure you&#39;ve already enabled USB debugging in the developer settings). Run the command
adb devices to ensure your device is connected, and that adb is reading and interacting with your device appropriately.
2. Download your hosts file from your device by issuing the command
adb pull /system/etc/hosts ./hosts
This will copy your hosts file to your computer, to allow you to edit it in an editor (Atom...).
3. Now, simply navigate to the directory which you copied the hosts file to, and edit it. Then you need to push the file back to your device. Command:
adb push ./hosts /system/etc
4. TIP : You can use the hosts file provided in my repo (hosts) !
4. Remember, Miui loves speaking to their servers, so, the hosts file in /system/etc is written new on every reboot by the bad MIUI

## Optional: Block DNS (root method)
1. Unlock your device
2. Download TWRP-3.3.1-16-Mi9SE provided by https://github.com/redispade/device_xiaomi_grus-twrp/releases
3. Execute these commands to install TWRP on your Xiaomi:
adb devices
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
fastboot flash recovery twrp-3.3.1-16-Mi9SE.img
fastboot boot twrp-3.3.1-16-Mi9SE.img
4. Install your ROM (LineageOS, MIUI, etc.)
4.1 The best way for MIUI is to go back on the '1.', install MiFlash on Windows, search on Google the proper MIUI recovery image 'grus_global_images_V11.0.2.0.tgz'. Download only the '.tgz' file. Then uncompress twice. You should get a folder, and inside this one, an 'images' folder. Start MiFlash, plug your phone, click on refresh, then browse, select the 'images' folder just created. Click on 'Flash all' dot button. Then follow the TWRP installation '2.'.
5. Start TWRP with a long press on the lock button + volume up. You should feel a vibration
6. Install Magisk app through the advanced menu on TWRP
7. Start your phone on MIUI and open Magisk app. Click on the menu then Downloads. Find "Systemless Hosts", install it. Go back to the app menu and select "Settings", then click on "File hosts out of system partition". Reboot your phone.
8. Install F-Droid through your browser (e.g Chrome), and search "AdAway". Install it and start the application. Follow the pocess to custom the hosts file by pressing the red button.
8.1 Go the menu app then "Your list", add mine https://github.com/koff75/secure-miui-11-bloatwares/blob/master/hosts
9. Voilà ! :)

More information:
[https://www.youtube.com/watch?v=XsADoRwdobU](https://www.youtube.com/watch?v=XsADoRwdobU)
