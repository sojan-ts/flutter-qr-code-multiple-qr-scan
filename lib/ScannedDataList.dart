import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannedDataListPage extends StatelessWidget {
  final List<String> scannedDataList;

  ScannedDataListPage(this.scannedDataList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scanned QR Code Data"),
      ),
      body: ListView.builder(
        itemCount: scannedDataList.length,
        itemBuilder: (context, index) {
          final scannedData = scannedDataList[index];
          return ListTile(
            title: Text(scannedData ?? 'unknown'),
          );
        },
      ),
    );
  }
}
