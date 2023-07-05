import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/newaccount.dart';

import 'listview.dart';
import 'main.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),));
}
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final formkey=GlobalKey<FormState>();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Login Page",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.green),),),
      body: Form(
        key: formkey,
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/img_1.png"))),
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Loginpage",style: TextStyle(fontStyle: FontStyle.normal,color: Colors.purple,fontSize: 30),),
              ),),
              Padding(padding:const EdgeInsets.only(top:30,left: 60,right: 60),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "username",
                    hintText: "Username",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(80))),
                textInputAction: TextInputAction.next,
                validator:(email){
                  if(email==null|| email.isEmpty){
                    return 'this field is required';
                  }
                  return null;
                }
              ),
              ),
             Padding(padding:
             const EdgeInsets.only(top: 30,left: 60,right: 60),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if (showpass){
                          showpass=false;
                        }
                        else
                          {
                            showpass=true;
                          }
                      });
                    }, icon: Icon( showpass==true ? Icons.visibility_off : Icons.visibility)),
                    labelText: "password",
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(80))
                ),
                validator:(password){
                  if(password!.isEmpty||password.length<8){
                    return 'please enter the valid  password';
                  }
                  else
                    {
                      return null;
                    }
                },
              ),),
              Padding(padding:

              const EdgeInsets.all(60),
              child: ElevatedButton(onPressed: () {

                final valid = formkey.currentState!.validate();
                    {
                      if(valid){
                        Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>listpage()));
                      }else{
                        return null;
                      }
                    }
              },child: Text("LOGIN",style: TextStyle(color: Colors.white),)),

              ),

               TextButton(onPressed: () {

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => newpage()));

               }, child: Text(" not a user ? create a new acciunt",style: TextStyle(color: Colors.red),),

               ),
            ],
          ),
        ),
      ),
    );

  }
}
