#!/bin/bash
apkBaseName=$1
tempSmaliDir=$2
if [ "$apkBaseName" = "framework-res" ];then
echo ">>> in custom_app for $apkBaseName to fix usb img big"
rm -rf $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_data_usb.png
echo ">>> in custom_app for $apkBaseName to fix bluetooth img big"
mv $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_upload_anim0.png $tempSmaliDir/res/drawable-xxhdpi-v4/stat_sys_upload_anim0.png
mv $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_upload_anim1.png $tempSmaliDir/res/drawable-xxhdpi-v4/stat_sys_upload_anim1.png
mv $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_upload_anim2.png $tempSmaliDir/res/drawable-xxhdpi-v4/stat_sys_upload_anim2.png
mv $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_upload_anim3.png $tempSmaliDir/res/drawable-xxhdpi-v4/stat_sys_upload_anim3.png
mv $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_upload_anim4.png $tempSmaliDir/res/drawable-xxhdpi-v4/stat_sys_upload_anim4.png
mv $tempSmaliDir/res/drawable-xhdpi-v4/stat_sys_upload_anim5.png $tempSmaliDir/res/drawable-xxhdpi-v4/stat_sys_upload_anim5.png
echo ">>> in custom_app for $apkBaseName to fix notify disk full img big"
rm -rf $tempSmaliDir/res/drawable-xhdpi-v4/stat_notify_disk_full.png
fi

#if [ "$apkBaseName" = "MzSyncService" ];then
#echo ">>> in custom_app for $apkBaseName to fix sync img big"
#mv $tempSmaliDir/res/drawable-nodpi-v4/mz_stat_notify_sync_succeed.png $tempSmaliDir/res/drawable-xxxhdpi-v4/mz_stat_notify_sync_succeed.png
#fi
