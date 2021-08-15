import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';
import 'package:janitor_feed/student/page_2/feedback_form.dart';

class qr_block extends StatefulWidget {
  @override
  _qr_blockState createState() => _qr_blockState();
}

class _qr_blockState extends State<qr_block> {
  String qrCode = 'not know';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Container(
              height: 5,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 60, 141, 188),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)))),
          Container(
              height: 150,
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Scan QR-Code",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: () => scanQRCode(),
                          child: Text("Scan",
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center),
                          color: Color.fromARGB(255, 51, 122, 183),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 40, 96, 144))),
                        )),
                  ),
                ],
              ))
        ]));
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#337ab7',
        'Cancel',
        true,
        ScanMode.QR,
      );
      if (!mounted) return;
      setState(() {
        this.qrCode = qrCode;
        //add code
        if(qrCode != "-1"){
        Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context)=> feedback_form(emp_id : qrCode),));
      }});
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }

}

