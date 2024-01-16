#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_wb_face.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_wb_face'
  s.version          = '0.0.1'
  s.summary          = '腾讯人脸核身，包含OCR'
  s.description      = <<-DESC
  腾讯人脸核身，包含OCR
  DESC
  s.homepage         = 'https://github.com/liasica/flutter_wb_face'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'liasica' => 'magicrolan@qq.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'
  
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386', 'OTHER_LDFLAGS' => '-ObjC' }
  s.swift_version = '5.0'
  
  # 导入腾讯SDK
  # s.library = 'c++'
  # s.library = 'z'
  s.libraries = ['c++', 'z']
  s.ios.frameworks = 'CoreTelephony', 'CoreServices', 'CoreMedia', 'AssetsLibrary', 'AVFoundation', 'SystemConfiguration', 'WebKit', 'UIKit', 'CoreVideo', 'Security', 'ImageIO', 'VideoToolbox', 'Accelerate'
  s.vendored_frameworks = 'Frameworks/TencentCloudHuiyanSDKFace.framework', 'Frameworks/tiny_opencv2.framework', 'Frameworks/tnnliveness.framework', 'Frameworks/TuringShieldCamRisk.framework', 'Frameworks/WBOCRService.framework', 'Frameworks/YTCommonLiveness.framework', 'Frameworks/YTCv.framework', 'Frameworks/YTFaceAlignmentTinyLiveness.framework', 'Frameworks/YTFaceDetectorLiveness.framework', 'Frameworks/YTFaceLiveReflect.framework', 'Frameworks/YTFaceTrackerLiveness.framework', 'Frameworks/YTImageRefiner.framework', 'Frameworks/YTPoseDetector.framework', 'Frameworks/YtSDKKitFrameworkTool.framework'
  s.resource = 'Frameworks/WBOCRService.bundle', 'Frameworks/face-tracker-v001.bundle', 'Frameworks/TencentCloudHuiyanSDKFace.bundle'
end
