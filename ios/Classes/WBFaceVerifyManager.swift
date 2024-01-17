//
//  WBFaceVerify.swift
//  flutter_wb_face
//
//  Created by liasica on 2024/1/16.
//

import Flutter
import TencentCloudHuiyanSDKFace

// MARK: - WBFaceVerifyCustomerServiceDelegate 实现方法
extension WBFaceVerifyManager: WBFaceVerifyCustomerServiceDelegate {
    public func wbfaceVerifyCustomerServiceDidFinished(with faceVerifyResult: WBFaceVerifyResult) {
        self.result([
            "isSuccess": faceVerifyResult.isSuccess,
            "sign": faceVerifyResult.sign ?? "",
            "liveRate": faceVerifyResult.liveRate ?? "",
            "similarity": faceVerifyResult.similarity ?? "",
            "userImageString": faceVerifyResult.userImageString ?? "",
            "error": faceVerifyResult.error.description ,
        ])
    }
    
    public func wbfaceVerifyCustomerServiceWillUploadBestImage(_ bestImage: UIImage) {
        print(WBFaceVerifyManager.LOG_TAG, bestImage)
    }
}

// MARK: - WBFaceVerifyManager
public class WBFaceVerifyManager : NSObject {
    static let LOG_TAG = "[WBFaceVerify]"
    
    var result: FlutterResult
    
    init(_ result: @escaping FlutterResult) {
        self.result = result
    }
    
    public func start(userId: String,
                      nonce: String,
                      sign: String,
                      appId: String,
                      orderNo: String,
                      licence: String,
                      version: String
    ) {
        DispatchQueue.main.async {
            let config = WBFaceVerifySDKConfig()
            config.recordVideo = true
            WBFaceVerifyCustomerService.sharedInstance().initSDK(withUserId: userId,
                                                                 nonce: nonce,
                                                                 sign: sign,
                                                                 appid: appId,
                                                                 orderNo: orderNo,
                                                                 apiVersion: version,
                                                                 licence: licence,
                                                                 faceId: nil,
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
