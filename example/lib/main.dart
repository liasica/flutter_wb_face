import 'package:flutter/material.dart';
import 'package:flutter_wb_face/flutter_wb_face.dart';
import 'package:permission_handler/permission_handler.dart';

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
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    if (await Permission.camera.request().isGranted) {
                      final result = await _flutterWbFacePlugin.ocr(
                        appId: '',
                        userId: '',
                        orderNo: '',
                        ticket: '',
                      );
                      print(result.toString());
                    }
                  },
                  child: const Text('OCR')),
            ],
          ),
        ),
      ),
    );
  }
}
