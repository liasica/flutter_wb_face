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
        <#code#>
    }
    
    public func wbfaceVerifyCustomerServiceWillUploadBestImage(_ bestImage: UIImage) {
        <#code#>
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
                      licence: String
    ) {
        DispatchQueue.main.async {
            let config = WBFaceVerifySDKConfig()
            config.recordVideo = true
            WBFaceVerifyCustomerService.sharedInstance().initSDK(withUserId: userId,
                                                                 nonce: nonce,
                                                                 sign: sign,
                                                                 appid: appId,
                                                                 orderNo: orderNo,
                                                                 apiVersion: "1.0.0",
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
