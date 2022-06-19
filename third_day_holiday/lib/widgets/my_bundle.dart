import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyBundle extends StatelessWidget {
  const MyBundle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultAssetBundle(
      bundle: TestAssetBundle(),
      child: const Text("hello World"),
    );
  }
}

class TestAssetBundle extends CachingAssetBundle {
  @override
  Future<ByteData> load(String key) async {
    if (key == 'resources/test') {
      return ByteData.view(
          Uint8List.fromList(utf8.encode('Hello World!')).buffer);
    }
    return ByteData(0);
  }
}
