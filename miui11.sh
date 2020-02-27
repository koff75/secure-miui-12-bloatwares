#!/bin/sh
# 1. Download ADB
# 2. Uncomment / customize the commented lines below to go though your adb folder
# cd /Users/[USER]/Downloads/platform-tools/
# 3. Start the script with the terminal : chmod +x miui11.sh && ./miui11.sh
./adb shell pm uninstall --user 0 com.android.browser #Mi Browser
./adb shell pm uninstall --user 0 com.android.calendar #Calendar
./adb shell pm uninstall --user 0 com.android.chrome #Google Chrome
./adb shell pm uninstall --user 0 com.android.mms #Messages
./adb shell pm uninstall --user 0 com.mipay.wallet.in #Mi Wallet India
./adb shell pm uninstall --user 0 com.facebook.appmanager #Facebook App Manager
./adb shell pm uninstall --user 0 com.facebook.katana
./adb shell pm uninstall --user 0 com.facebook.services #Facebook Services
./adb shell pm uninstall --user 0 com.facebook.system #Facebook App Installer
./adb shell pm uninstall --user 0 com.mi.android.globalFileexplorer #Administrador
./adb shell pm uninstall --user 0 com.milink.service
./adb shell pm uninstall --user 0 com.mi.liveassistant
./adb shell pm uninstall --user 0 com.mipay.wallet
./adb shell pm uninstall --user 0 com.miui.analytics #Analytics
./adb shell pm uninstall --user 0 com.miui.android.fashiongallery
./adb shell pm uninstall --user 0 com.miui.antispam
./adb shell pm uninstall --user 0 com.miui.bugreport #Mi Feedback
./adb shell pm uninstall --user 0 com.miui.calculator #Calculator
./adb shell pm uninstall --user 0 com.miui.cleanmaster
./adb shell pm uninstall --user 0 com.miui.cloudbackup
./adb shell pm uninstall --user 0 com.miui.cloudservice
./adb shell pm uninstall --user 0 com.miui.cloudservice.sysbase
./adb shell pm uninstall --user 0 com.miui.compass #Mi Compass
./adb shell pm uninstall --user 0 com.miui.contentcatcher
./adb shell pm uninstall --user 0 com.miui.daemon
./adb shell pm uninstall --user 0 com.miui.fm
# ./adb shell pm uninstall --user 0 com.miui.gallery
# ./adb shell pm uninstall --user 0 com.miui.home
./adb shell pm uninstall --user 0 com.miui.hybrid
./adb shell pm uninstall --user 0 com.miui.klo.bugreport
./adb shell pm uninstall --user 0 com.miui.msa.global #Main System Advertising
./adb shell pm uninstall --user 0 com.miui.notes #Mi Notes
./adb shell pm uninstall --user 0 com.miui.personalassistant
./adb shell pm uninstall --user 0 com.miui.player #Mi Music
./adb shell pm uninstall --user 0 com.miui.providers.weather # Mi Weather
# adb shell pm uninstall --user 0 com.miui.screenrecorder #Mi Screen Recorder
./adb shell pm uninstall --user 0 com.miui.systemAdSolution
./adb shell pm uninstall --user 0 com.miui.translation.kingsoft
./adb shell pm uninstall --user 0 com.miui.translation.youdao
./adb shell pm uninstall --user 0 com.miui.video
./adb shell pm uninstall --user 0 com.miui.videoplayer #Mi Video
./adb shell pm uninstall --user 0 com.miui.videoplayer.overlay
./adb shell pm uninstall --user 0 com.miui.virtualsim
./adb shell pm uninstall --user 0 com.miui.vsimcore
./adb shell pm uninstall --user 0 com.miui.weather2
./adb shell pm uninstall --user 0 com.miui.yellowpage
./adb shell pm uninstall --user 0 com.mi.webkit.core
./adb shell pm uninstall --user 0 com.qiyi.video
./adb shell pm uninstall --user 0 com.sohu.inputmethod.sogou.xiaomi
./adb shell pm uninstall --user 0 com.xiaomi.ab
./adb shell pm uninstall --user 0 com.xiaomi.channel
./adb shell pm uninstall --user 0 com.xiaomi.gamecenter.sdk.service
./adb shell pm uninstall --user 0 com.xiaomi.lens
./adb shell pm uninstall --user 0 com.xiaomi.midrop #Mi Drop
./adb shell pm uninstall --user 0 com.xiaomi.mipicks #Mi Apps
./adb shell pm uninstall --user 0 com.xiaomi.payment
./adb shell pm uninstall --user 0 com.xiaomi.scanner #Mi Scannercom.miui.screenrecorder
# More and more
adb shell pm uninstall -k --user 0 com.mi.global.bbs
adb shell pm uninstall -k --user 0 com.mi.global.shop
adb shell pm uninstall -k --user 0 com.mi.globalTrendNews
adb shell pm uninstall -k --user 0 com.milink.service
adb shell pm uninstall -k --user 0 com.mi.liveassistant
adb shell pm uninstall -k --user 0 com.mipay.wallet
adb shell pm uninstall -k --user 0 com.mipay.wallet.in
adb shell pm uninstall -k --user 0 com.miui.analytics
adb shell pm uninstall -k --user 0 com.miui.android.fashiongallery
adb shell pm uninstall -k --user 0 com.miui.bugreport
adb shell pm uninstall -k --user 0 com.miui.cleanmaster
adb shell pm uninstall -k --user 0 com.miui.cloudbackup
adb shell pm uninstall -k --user 0 com.miui.cloudservice
adb shell pm uninstall -k --user 0 com.miui.cloudservice.sysbase
adb shell pm uninstall -k --user 0 com.miui.compass
adb shell pm uninstall -k --user 0 com.miui.contentcatcher
adb shell pm uninstall -k --user 0 com.miui.daemon
adb shell pm uninstall -k --user 0 com.miui.fm
adb shell pm uninstall -k --user 0 com.miui.gallery
adb shell pm uninstall -k --user 0 com.miui.hybrid
adb shell pm uninstall -k --user 0 com.miui.hybrid.accessory
adb shell pm uninstall -k --user 0 com.miui.klo.bugreport
adb shell pm uninstall -k --user 0 com.miui.notes
adb shell pm uninstall -k --user 0 com.miui.personalassistant
adb shell pm uninstall -k --user 0 com.miui.player
adb shell pm uninstall -k --user 0 com.miui.screenrecorder
adb shell pm uninstall -k --user 0 com.miui.systemAdSolution
adb shell pm uninstall -k --user 0 com.miui.translation.kingsoft
adb shell pm uninstall -k --user 0 com.miui.translationservice
adb shell pm uninstall -k --user 0 com.miui.translation.youdao
adb shell pm uninstall -k --user 0 com.miui.video
adb shell pm uninstall -k --user 0 com.miui.videoplayer
adb shell pm uninstall -k --user 0 com.miui.videoplayer.overlay
adb shell pm uninstall -k --user 0 com.miui.virtualsim
adb shell pm uninstall -k --user 0 com.miui.vsimcore
adb shell pm uninstall -k --user 0 com.miui.weather2
adb shell pm uninstall -k --user 0 com.miui.yellowpage
adb shell pm uninstall -k --user 0 com.mi.webkit.core
adb shell pm uninstall -k --user 0 com.netflix.mediaclient
adb shell pm uninstall -k --user 0 com.netflix.partner.activation
adb shell pm uninstall -k --user 0 com.opera.app.news
adb shell pm uninstall -k --user 0 com.opera.branding
adb shell pm uninstall -k --user 0 com.opera.branding.news
adb shell pm uninstall -k --user 0 com.opera.mini.native
adb shell pm uninstall -k --user 0 com.phonepe.app
adb shell pm uninstall -k --user 0 com.qiyi.video
adb shell pm uninstall -k --user 0 com.skype.m2
adb shell pm uninstall -k --user 0 com.sohu.inputmethod.sogou.xiaomi
adb shell pm uninstall -k --user 0 com.til.timesnews
adb shell pm uninstall -k --user 0 com.UCMobile.intl
adb shell pm uninstall -k --user 0 com.xiaomi.ab
adb shell pm uninstall -k --user 0 com.xiaomi.channel
adb shell pm uninstall -k --user 0 com.xiaomi.gamecenter.sdk.service
adb shell pm uninstall -k --user 0 com.xiaomi.glgm
adb shell pm uninstall -k --user 0 com.xiaomi.joyose
adb shell pm uninstall -k --user 0 com.xiaomi.jr
adb shell pm uninstall -k --user 0 com.xiaomi.lens
adb shell pm uninstall -k --user 0 com.xiaomi.midrop
adb shell pm uninstall -k --user 0 com.xiaomi.mipicks
adb shell pm uninstall -k --user 0 com.xiaomi.mirecycle
adb shell pm uninstall -k --user 0 com.xiaomi.o2o
adb shell pm uninstall -k --user 0 com.xiaomi.oversea.ecom
adb shell pm uninstall -k --user 0 com.xiaomi.pass
adb shell pm uninstall -k --user 0 com.xiaomi.payment
adb shell pm uninstall -k --user 0 com.xiaomi.scanner
adb shell pm uninstall -k --user 0 com.xiaomi.shop
adb shell pm uninstall -k --user 0 com.xiaomi.vipaccount
# Other bloatwares
adb shell pm uninstall -k --user 0 com.alibaba.aliexpresshd
adb shell pm uninstall -k --user 0 com.opera.browser
adb shell pm uninstall -k --user 0 com.miui.enbbs
adb shell pm uninstall -k --user 0 com.miui.miservice
adb shell pm uninstall -k --user 0 com.xiaomi.xmsf     
adb shell pm uninstall -k --user 0 android.autoinstalls.config.Xiaomi.persus	
adb shell pm uninstall -k --user 0 com.android.providers.downloads.ui # Download app, replace with Files from Google App
adb shell pm uninstall -k --user 0 com.android.contacts # You can replace with Google Contacts App
# Android part
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.music
