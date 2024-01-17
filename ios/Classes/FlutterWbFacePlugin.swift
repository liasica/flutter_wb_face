import Flutter
import TencentCloudHuiyanSDKFace
import UIKit

public class FlutterWbFacePlugin: NSObject, FlutterPlugin {
    static let methodChannelName = "com.liasica.flutter_wb_face/method"
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: methodChannelName, binaryMessenger: registrar.messenger())
        let instance = FlutterWbFacePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        case "ocr":
            handleOcr(call, result)
        case "face":
            handleFace(call, result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func handleOcr(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
        // let arguments = call.arguments
        if let args = call.arguments as? Dictionary<String, Any>,
           let appId = args["appId"] as? String,
           let userId = args["userId"] as? String,
           let nonce = args["nonce"] as? String,
           let sign = args["sign"] as? String,
           let orderNo = args["orderNo"] as? String {
            
            WBOCRManager.start(result, appId: appId, userId: userId, sign: sign, orderNo: orderNo, nonce: nonce)
        } else {
            result(nil)
        }
    }
    
    private func handleFace(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
        let manager = WBFaceVerifyManager(result)
        
        if let args = call.arguments as? Dictionary<String, Any>,
           let appId = args["appId"] as? String,
           let userId = args["userId"] as? String,
           let nonce = args["nonce"] as? String,
           let sign = args["sign"] as? String,
           let orderNo = args["orderNo"] as? String,
           let licence = args["licence"] as? String {
            manager.start(appId: appId, userId: userId, nonce: nonce, sign: sign, orderNo: orderNo, licence: licence)
        } else {
            result(nil)
        }
    }
}
