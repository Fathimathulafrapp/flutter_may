import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HomePage(),));
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(color: Colors.purple),
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}