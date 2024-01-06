import 'package:flutter/material.dart';
import 'package:lib8_150/pages/secondpage.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({super.key, required this.data});

  final String data;

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าที่3'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(widget.data),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => secondpage()));
              },
              child: Text('back page'))
        ],
      )),
    );
  }
}
