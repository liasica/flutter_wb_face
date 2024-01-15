import Flutter
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
            
            let ocr = WBOCRManager(appId: appId, userId: userId)
            ocr.start(result, sign: sign, orderNo: orderNo, nonce: nonce)
        } else {
            result(nil)
        }
    }
}
