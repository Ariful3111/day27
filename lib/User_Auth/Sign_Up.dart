import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day27/Bottom_Nav/Bottom_Nav_Home.dart';
import 'package:day27/User_Auth/AuthHelper.dart';
import 'package:day27/User_Auth/Log_In.dart';
import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUP extends StatefulWidget {
  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {

  Future adduser()async{
    CollectionReference user= await FirebaseFirestore.instance.collection('UserInfo');

    user.add(({
      'email': email,
      'password': password,
    })
    );
  }

  SharedPreferences? sharedPreferences;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close_sharp,
                    color: textColorLight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Your email address',
                    style: myFonts(16, textColorDeep, FontWeight.w400),
                  ),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: textColorDeep,
                    ),
                    labelText: 'Enter your email address',
                    labelStyle: myFonts(16, textColorDeep, FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: textColorDeep),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Your password',
                    style: myFonts(16, textColorDeep, FontWeight.w400),
                  ),
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.vpn_key_outlined,
                      color: textColorDeep,
                    ),
                    labelText: 'Enter Your password',
                    labelStyle: myFonts(16, textColorDeep, FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: textColorDeep),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                CustomeButton(
                  size: Get.height * 0.07,
                  onTap: () async {
                    // sharedPreferences = await SharedPreferences.getInstance();
                    // sharedPreferences!.setString('email', email.text.toString());
                    // sharedPreferences!.getString('email');
                    AuthHelper().registration(email.text, password.text, context);
                    adduser();
                    Get.to(BottomNavHome());
                    // Get.to(LogIn());
                  },
                  widget: Text(
                    'Sign Up',
                    style: myFonts(17, textColorLight, FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: MaterialButton(
                    onPressed: () {
                      Get.to(LogIn());
                    },
                    child: Center(
                      child: Text('Already Sign Up\n  Go To Log In',
                        style: myFonts(17, textColorLight, FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
