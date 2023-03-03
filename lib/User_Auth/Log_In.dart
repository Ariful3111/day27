import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LogIn extends StatefulWidget {


  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  SharedPreferences ? sharedPreferences;
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  value(){
    sharedPreferences!.get('email');
  }

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

          },
            child: Text('Log In'),
          ),

        ],
      ),
      ),
    );
  }
}
