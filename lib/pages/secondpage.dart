import 'package:flutter/material.dart';
import 'package:lib8_150/pages/thirdpage.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หนา้ที่2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('หน้าที่2'),
            TextFormField(
              controller: _controller,
              autofocus: true,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'First Name',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => secondpage()));
                },
                child: Text('back page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => thirdpage(
                                data: _controller.text,
                              )));
                },
                child: Text('next page'))
          ],
        ),
      ),
    );
  }
}
