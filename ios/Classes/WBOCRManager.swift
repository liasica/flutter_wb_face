//
//  WBOCRManager.swift
//  flutter_wb_face
//
//  Created by liasica on 2024/1/15.
//

import Flutter
import WBOCRService

public class WBOCRManager {
    var appId: String
    var userId: String
    
    let LOG_TAG = "[WBOCRManager]"
    
    init(appId: String, userId: String) {
        self.appId = appId
        self.userId = userId
    }
    
    var version: String {
        let version = WBOCRService.shared().sdkVersion
        print(LOG_TAG, "SDK Version:", WBOCRService.shared().sdkVersion)
        return version
    }
    
    public func start(_ result: @escaping FlutterResult, sign: String, orderNo: String, nonce: String) {
        WBOCRConfig.shared().retCrop = true
        
        WBOCRService.shared().initSDK(
            withSDKType: WBOCRCardType.WBOCRSDKTypeIDCardContinuous,
            appId: self.appId,
            nonce: nonce,
            userId: self.userId,
            sign: sign,
            orderNo: orderNo,
            version: "1.0.0",
            succeed: {
                print(self.LOG_TAG, "initSDK 成功，开始调起OCR")
                WBOCRService.shared().start { resultModel, _ in
                    print(self.LOG_TAG, resultModel)
                    if let res = resultModel as? WBIDCardInfoModel {
                        result([
                            "idcard": res.idcard,
                            "name": res.name,
                            "sex": res.sex,
                            "nation": res.nation,
                            "address": res.address,
                            "birth": res.birth,
                            "authority": res.authority,
                            "validDate": res.validDate,
                            "frontWarning": res.frontWarning,
                            "backWarning": res.backWarning,
                            "frontClarity": res.frontClarity,
                            "backClarity": res.backClarity,
                            "frontCode": res.frontCode,
                            "frontMsg": res.frontMsg,
                            "backCode": res.backCode,
                            "backMsg": res.backMsg,
                            "frontCrop": res.frontCrop,
                            "backCrop": res.backCrop,
                        ])
                    } else {
                        result(nil)
                    }
                } failed: { error, _ in
                    print(self.LOG_TAG, "startOCRService failed:", error)
                    self.failed(result, error: error)
                }
            },
            failed: {error, _ in
                print(self.LOG_TAG, "initSDK 失败:", error)
                self.failed(result, error: error)
            }
        )
    }
    
    private func succeed () {
    }
    
    private func failed(_ result: @escaping FlutterResult, error: Error) {
        let err = error as NSError
        result(FlutterError(code: err.domain, message:  err.userInfo.first?.value as? String ?? err.userInfo.description, details: nil))
    }
}
