import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login2.dart';



class Registration extends StatefulWidget{
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Registration"),
    ),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
      controller: name,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: "Name"),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
      controller: uname,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: "UserName"),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
      controller: pwd,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: "Password"),
    ),
    ),
         ElevatedButton(onPressed: (){
           Navigator.push(context,
               MaterialPageRoute(builder: (context) => storedata()));
         }, child:Text("Register here") )
              
  ]),

  );

  }

  storedata() async {
    String personname = name.text;
    String username = uname.text;
    String password = pwd.text;

    preferences = await SharedPreferences.getInstance()!;
    preferences.setString('name', personname);
    preferences.setString('uname', username);
    preferences.setString('pass', password);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2()));
  }

}
