import 'package:day27/User_Auth/Log_In.dart';
import 'package:day27/Widgets/Button.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Column(
      children: [
          TextFormField(
            controller: email,
          ),
          TextFormField(
            controller: password,
          ),
          SizedBox(height: Get.height*0.02,),
          CustomeButton(
            size: Get.height*0.07,
              title: (""),
              onTap:  () async {
          sharedPreferences= await SharedPreferences.getInstance();
          sharedPreferences!.setString('email', email.text.toString());
          sharedPreferences!.getString('email');
          Get.to(LogIn());
          }

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
      ),
    );
  }
}
