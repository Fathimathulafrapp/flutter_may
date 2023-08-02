import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/main.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Alertwithback(),

  );
  }

}
class Alertwithback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context) =>
          AlertDialog(
            title: const Text('Exit!!'),
            content: const Text('Do you want to Exit??'),
            actions: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop(false
                );
              }, child: Text('No')),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop(true
                );
              }, child: Text('Yes'))

            ],

          ));
    }


    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Alert'),
          backgroundColor: Colors.yellow,
        ),

      ),
    );
  }
}
