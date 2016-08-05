#/bin/bash
echo "in $0"
PWD=`pwd`
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/merged_target_files
OVERLAY_DIR=$PWD/overlay
cp -a launcher.xml $TARGET_FILES_DIR/SYSTEM/media/
cp -a plugin $TARGET_FILES_DIR/SYSTEM/
cp -a bootanimation.zip $TARGET_FILES_DIR/SYSTEM/media/

sed -i 's#ro.mtk_audio_profiles=1#ro.mtk_audio_profiles=0#g' $TARGET_FILES_DIR/SYSTEM/build.prop

cp -a firmware/* $TARGET_FILES_DIR/BOOTABLE_IMAGES/
