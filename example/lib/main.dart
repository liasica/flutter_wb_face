import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_wb_face/flutter_wb_face.dart';
import 'package:flutter_wb_face/models/models.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> getParams() async {
  var url = 'http://10.10.10.92:5010/rider/v2/certification/ocr';

  // Create request
  var request = http.Request('GET', Uri.parse(url));

  // Add headers
  final headers = {
    'X-Device-Serial': 'ios',
    'X-Device-Type': 'ios',
    'X-Rider-Token':
        'cmiuuksbajf3t7st0ftgEQ28PGIxnB6HRiGEYpMCI+/9F+2CFyHUCZ1om0SbDfSQU2FzMT5vwKkcaVKRlGMubvS9zlj7zilT2vd+y3Wbmba2vMqSKxp6ggn5+AuYohD5bvQwZGM6cT8cHB6sCTP5OrZD6NLygS0E44812CJtTvPEZEMtIIYxbI9moxAo6JDTb16b1WAnSiQAwJQV0wHumazMSBqC2UCXufkehd5JveB/7kKF/sNgoS4J9owOH3i/UWPNnJK3ivZkhKWp/KeEds8/ez0cMWvl3UIwR46J/r2jTwIeIDZClAfGsbANADtrh5E8NNAtpJQTEI0zBXXNZRZFD0dRmN8OHuHBMhQRKSz8eyDheLpdz8HjTvmt6CwqCvt5jq/MQctHatkyAhVME815JIityBm+GiIPi0z7A7T7UyHqr+yq8JbIFzBTHPtNaoELodaFWC9KJCArPXxm5/QSVELH4YL06ACsKzVvzMJcH3odqrDUHmiXNzpyL8V+UdDkCilJfvtuKTGPFUC0PsMzAmycH8nAkjNlzIShnCw4F6vEHc6U6X+wNOd6gFDRP00JZaD8aTiEvditnkLAz9mwsZjE/4TAOEmR+f6797VtgB3N9iTNlg9vssZAR+YuKXgWk3g2ByFaSyBu5L7PR8CCN2ZwGdBfXMq9BPNmXxFsRs6R+4YLlG9rWHsv+Xc=',
  };
  request.headers.addAll(headers);

  // Fetch Request
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final body = await response.stream.bytesToString();
    return jsonDecode(body) as Map<String, dynamic>;
  } else {
    debugPrint(response.reasonPhrase);
  }
  return null;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterWbFacePlugin = FlutterWbFace();

  WbOcrResultModel? _ocrResult;
  WbFaceVerifyResultModel? _faceResult;

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final params = await getParams();
                      final data = params?['data'] as Map<String, dynamic>?;
                      if (data != null && await Permission.camera.request().isGranted) {
                        final result = await _flutterWbFacePlugin.ocr(WbRequestModel.fromJson(data));
                        if (result != null) {
                          setState(() {
                            _ocrResult = result;
                          });
                        }
                      }
                    },
                    child: const Text('OCR'),
                  ),
                  if (_ocrResult != null)
                    Column(
                      children: [
                        Image.memory(base64Decode(_ocrResult!.frontCrop!)),
                        Image.memory(base64Decode(_ocrResult!.backCrop!)),
                        Text('身份证号: ${_ocrResult!.idcard}'),
                        Text('姓名: ${_ocrResult!.name}'),
                        Text('性别: ${_ocrResult!.sex}'),
                        Text('民族: ${_ocrResult!.nation}'),
                        Text('住址: ${_ocrResult!.address}'),
                        Text('出生日期: ${_ocrResult!.birth}'),
                        Text('签发机关: ${_ocrResult!.authority}'),
                        Text('有效期限: ${_ocrResult!.validDate}'),
                        Text('人像面警告: ${_ocrResult!.frontWarning}'),
                        Text('国徽面警告: ${_ocrResult!.backWarning}'),
                        Text('人像面清晰度: ${_ocrResult!.frontClarity}'),
                        Text('国徽面清晰度: ${_ocrResult!.backClarity}'),
                        Text('人像面识别结果码: ${_ocrResult!.frontCode}'),
                        Text('人像面识别结果描述: ${_ocrResult!.frontMsg}'),
                        Text('国徽面识别结果码: ${_ocrResult!.backCode}'),
                        Text('国徽面识别结果描述: ${_ocrResult!.backMsg}'),
                      ],
                    ),
                  ElevatedButton(
                    onPressed: () async {
                      const data = WbFaceVerifyModel(appId: '', licence: '', nonce: '', orderNo: '', sign: '', userId: '', version: '');
                      final result = await _flutterWbFacePlugin.face(data);
                      print(result);
                      if (result != null) {
                        setState(() {
                          _faceResult = result;
                        });
                      }
                    },
                    child: const Text('人脸识别'),
                  ),
                  if (_faceResult != null)
                    Column(
                      children: [
                        Text('是否成功: ${_faceResult!.isSuccess}'),
                        Text('签名: ${_faceResult!.sign}'),
                        Text('活体检测分数: ${_faceResult!.liveRate}'),
                        Text('人脸比对分数: ${_faceResult!.similarity}'),
                        Text('错误: ${_faceResult!.error}'),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
