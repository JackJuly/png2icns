#! /bin/bash

if [ ! -x "/usr/bin/sips" ]; then
    echo "失败：未找到可执行的SIPS "
	echo "Failed: Cannot find required SIPS executable at: /usr/bin/sips "
	exit;
fi
if [ ! -x "/usr/bin/iconutil" ]; then
    echo "失败：未找到可执行的ICONUTIL "
	echo "Failed: Cannot find required ICONUTIL executable at: /usr/bin/iconutil "
	exit;
fi

read -p "Please enter the path to your source PNG image:" FILENAME

if [ ! -f "${FILENAME}" ]; then
    echo "失败：图片未找到！"
    echo "Failed: Image Not Found!"
    exit;
fi


if [[ $FILENAME == *.png ]];then

    DIRNAME='icon-'`date +"%Y-%m-%d-%H:%M:%S"`
    cd /tmp
    mkdir $DIRNAME
    cd $DIRNAME
    cp $FILENAME icon.png

    mkdir icon.iconset

    sips -z 16 16       icon.png --out icon.iconset/icon_16x16.png
    sips -z 32 32       icon.png --out icon.iconset/icon_16x16@2x.png
    sips -z 32 32       icon.png --out icon.iconset/icon_32x32.png
    sips -z 64 64       icon.png --out icon.iconset/icon_32x32@2x.png
    sips -z 128 128     icon.png --out icon.iconset/icon_128x128.png
    sips -z 256 256     icon.png --out icon.iconset/icon_128x128@2x.png
    sips -z 256 256     icon.png --out icon.iconset/icon_256x256.png
    sips -z 512 512     icon.png --out icon.iconset/icon_256x256@2x.png
    sips -z 512 512     icon.png --out icon.iconset/icon_512x512.png
    sips -z 1024 1024   icon.png --out icon.iconset/icon_512x512@2x.png

    iconutil -c icns icon.iconset

    cp icon.icns ~/desktop/$DIRNAME.icns
    cd ..
    rm -rf $DIRNAME
    echo "图标已保存至桌面！"
    echo "The icon is now on your desktop!"

else
    echo "注意：请使用PNG格式的文件！"
    echo "Error: Source image format should be PNG!"
fi
