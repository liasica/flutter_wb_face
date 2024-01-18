//
//  WBFaceVerify.swift
//  flutter_wb_face
//
//  Created by liasica on 2024/1/16.
//

import Flutter
import TencentCloudHuiyanSDKFace

// MARK: - WBFaceVerifyCustomerServiceDelegate
public class WBFaceVerifyDelegate : NSObject, WBFaceVerifyCustomerServiceDelegate {
    var result: FlutterResult?

    public func wbfaceVerifyCustomerServiceDidFinished(with faceVerifyResult: WBFaceVerifyResult) {
        let data: Dictionary<String, Any?> = [
            "isSuccess": faceVerifyResult.isSuccess,
            "sign": faceVerifyResult.sign,
            "liveRate": faceVerifyResult.liveRate,
            "similarity": faceVerifyResult.similarity,
            "userImageString": faceVerifyResult.userImageString,
            "error": faceVerifyResult.error?.description,
        ]
        
        print("[WBFaceVerifyDelete]", "返回结果", data)
        result?(data)
    }
    
}

// MARK: - WBFaceVerifyManager
public class WBFaceVerifyManager : NSObject {
    
    let LOG_TAG = "[WBFaceVerify]"
    
    var result: FlutterResult
    
    init(_ result: @escaping FlutterResult) {
        self.result = result
    }
    
    deinit {
        
    }
    
    public func start(userId: String,
                      nonce: String,
                      sign: String,
                      appId: String,
                      orderNo: String,
                      licence: String,
                      version: String,
                      faceId: String
    ) {
        DispatchQueue.main.async {
            
            
            print(self.LOG_TAG, "isService", WBFaceVerifyCustomerService.sharedInstance().isService)
            
            let config = WBFaceVerifySDKConfig()
            config.recordVideo = true
            config.isIpv6 = false
            config.useAdvanceCompare = false
            config.mute = false
            // 设置bundlePath
            config.bundlePath = config.bundlePath + "/Frameworks/flutter_wb_face.framework"
            
            if let faceTrackerBundleDirPath = config.faceTrackerBundleDirPath {
                config.faceTrackerBundleDirPath = faceTrackerBundleDirPath + "/Frameworks/flutter_wb_face.framework"
            }
            
            WBFaceVerifyCustomerService.sharedInstance().initSDK(withUserId: userId,
                                                                 nonce: nonce,
                                                                 sign: sign,
                                                                 appid: appId,
                                                                 orderNo: orderNo,
                                                                 apiVersion: "1.0.0",
                                                                 licence: licence,
                                                                 faceId: faceId,
                                                                 sdkConfig: config) {
                
                if (!WBFaceVerifyCustomerService.sharedInstance().startWbFaceVeirifySdk()) {
                    self.failure("WBFaceVerify", "人脸识别SDK拉起失败")
                }
            } failure: { error in
                self.failure(error.domain, error.description)
            }
            
        }
    }
    
    func failure (_ code: String, _ message: String) {
        self.result(FlutterError(code: code, message: message, details: nil))
    }
}
