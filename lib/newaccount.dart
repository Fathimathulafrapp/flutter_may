import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/login.dart';

import 'listview.dart';

class newpage extends StatefulWidget{

  @override
  State<newpage> createState() => _login();
}

class _login  extends State<newpage> {
  bool showpass=true;
  final formkey=GlobalKey<FormState>();
  final TextEditingController _pass =TextEditingController();
  final TextEditingController _confirmpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(' Sign Up'),),
      body:

      Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://wallpapers.com/images/featured/phone-jfm7uaea6wor69c1.jpg"))),
        child: Form(
          key: formkey,
            child: Column(
              children: [
                Center(child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text("Create your Email",style: TextStyle(fontStyle: FontStyle.normal,color: Colors.purple,fontSize: 30),),
                ),),
                Padding(padding:const EdgeInsets.only(top:30,left: 60,right: 60),
                  child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "Enetr Yor email",

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
                    controller: _pass,
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
    Padding(padding:const EdgeInsets.only(top:30,left: 60,right: 60),
    child: TextFormField(
        controller: _confirmpass,
        validator: (val){
          if(val!.isEmpty)
            return 'Empty';
          if(val!=_pass.text)
            return 'not match';
          return null;
        },
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
    labelText: 'confirm Password',
        hintText: 'confirm password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(80))



    ),
    ),
    ),
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
                  },child: Text("Register")),
                ),
              ],
            ),
          ),
      ),
      );

  }
}
