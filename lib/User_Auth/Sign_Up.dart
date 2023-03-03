import 'package:day27/User_Auth/Log_In.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUP extends StatefulWidget {


  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  SharedPreferences ? sharedPreferences;
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
      children: [
        TextFormField(
          controller: email,
        ),
        TextFormField(
          controller: password,
        ),
        MaterialButton(onPressed: (){
          sharedPreferences!=SharedPreferences.getInstance();
          sharedPreferences!.setString('email', email.text.toString());
          sharedPreferences!.getString('email');
        },
        child: Text('Sign Up'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(onPressed: (){
            Get.to(LogIn());
          },
          child: Text('Already Sign Up\nGo To Log In'),
          ),
        ),
      ],
      ),
      ),
    );
  }
}
