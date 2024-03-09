# Flutter 腾讯人脸核验插件

## 参考
 - [Demystifying Local AAR Usage in Flutter: Step-by-Step Guide for Flutter Plugins and Projects](https://itnext.io/working-with-local-aar-files-in-flutter-6028bb289124)
 - [FlutterDeepAR](https://github.com/KalanaPerera/FlutterDeepAR/blob/master/android/build.gradle)

## 引入插件

### iOS

创建`ios/Frameworks`目录，并将腾讯人脸核验和OCR插件放入`ios/Frameworks`目录，正确的目录结构如下：

```
ios/Frameworks
├── TencentCloudHuiyanSDKFace.bundle
├── TencentCloudHuiyanSDKFace.framework
├── TuringShieldCamRisk.framework
├── WBOCRService.bundle
├── WBOCRService.framework
├── YTCommonLiveness.framework
├── YTCv.framework
├── YTFaceAlignmentTinyLiveness.framework
├── YTFaceDetectorLiveness.framework
├── YTFaceLiveReflect.framework
├── YTFaceTrackerLiveness.framework
├── YTImageRefiner.framework
├── YTPoseDetector.framework
├── YtSDKKitFrameworkTool.framework
├── face-tracker-v001.bundle
├── tiny_opencv2.framework
└── tnnliveness.framework
```

