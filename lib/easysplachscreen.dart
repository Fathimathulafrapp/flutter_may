
import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Myappstate();

}

class Myappstate extends State {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( decoration: const BoxDecoration(color: Colors.yellow),
          child: Center(
        child: Text("hiii"),
      ),
      ),
    );

  }

  }


// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // home: SplashPage(),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => SplashPage(),
//         // '/': (context) => SplashFuturePage(),
//         '/home': (context) => HomePage(),
//       },
//     );
