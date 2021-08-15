import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class create_QR extends StatefulWidget {
  @override
  _create_QRState createState() => _create_QRState();
}

class _create_QRState extends State<create_QR> {
  final controller = TextEditingController();
  Widget buildTextField(BuildContext context) => TextField(
    controller: controller,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    decoration: InputDecoration(
      hintText: 'Enter the data',
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 128, 185),
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Image(
          image: AssetImage("vitlogo.png"),
          width: 200,
          height: 50,
          alignment: Alignment.bottomLeft,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Janitor-Feed",
            style: TextStyle(
                fontFamily: 'Times',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )
      ],
    ),
      body: Center(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarcodeWidget(
              barcode: Barcode.qrCode(),
              color: Colors.white,
              data: controller.text ?? 'Hello world',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: buildTextField(context)),
                const SizedBox(width: 12),
                FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.done, size: 30),
                  onPressed: () => setState(() {}),
                )
              ],
            ),
          ],
        ),
      ),
    ),);
  }
}
