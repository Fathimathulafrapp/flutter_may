import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: myapp(),
  ));
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "MY FLUTTER APP",
          style: TextStyle(color: Color(0xffe71043)),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
          child: Container(
        color: Colors.green.shade500,
        child: Text(
          "my first flutter project",
          style: TextStyle(
              color: Colors.yellow, fontStyle: FontStyle.italic, fontSize: 45),
        ),
      )),
    );
  }
}
