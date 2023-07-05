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
          style: TextStyle(color: Colors.purple),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(color: Colors.greenAccent),
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(""))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.laptop,size: 70,color: Colors.black,),
            Center(
              child: Text(
                "MY FIRST LUTTER PROJECT",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 30),
              ),
            ),
            // Image(image: NetworkImage("https://media.istockphoto.com/id/917806594/photo/silhouettes-of-sea-piers-during-sunset-in-calicut.jpg?s=612x612&w=0&k=20&c=ndIu0AkHZrRaOFUEi_2kNDSXrnfp3GPYJkgpR9Z6Y1Y=")),
            SizedBox(
                child: Image(
                    image: AssetImage("assets/images/kk.png"),
                    fit: BoxFit.cover)),
          ],
        )),
      ),
    );
  }
}
