#!/bin/bash

flutter clean

echo "删除文件..."
rm -Rf pubspec.lock
#rm -rf ios/Flutter/Flutter.framework
#rm -rf ios/Flutter/Flutter.podspec
rm -Rf ios/Podfile.lock
rm -Rf ios/Pods
rm -Rf ios/.symlinks
rm -Rf ios/Flutter/Flutter.framework
rm -Rf ios/Flutter/Flutter.podspec

echo "下载包..."
flutter pub cache repair
flutter pub get

echo "执行pod install"
cd ios || exit
pod cache clean --all
pod install --repo-update
cd ../