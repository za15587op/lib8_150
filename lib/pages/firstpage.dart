import 'package:flutter/material.dart';
import 'package:lib8_150/pages/secondpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lib8_150')),
        body: Center(
          child: Column(
            children: [
              Text('หน้าหลัก'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => secondpage()));
                  },
                  child: Text('next page'))
            ],
          ),
        ));
  }
}
