import 'package:day27/Bottom_Nav/Bottom_Nav_Home.dart';
import 'package:day27/User_Auth/AuthHelper.dart';
import 'package:day27/User_Auth/Sign_Up.dart';
import 'package:day27/User_Auth/recover%20password.dart';
import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  SharedPreferences? sharedPreferences;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? value;
  getSavedData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    value = sharedPreferences!.getString("email");
    setState(() {});
  }

  @override
  void initState() {
    getSavedData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    TextButton(
                        onPressed: () {
                          Get.to(SignUP());
                        },
                        child: Text(
                          'Sign Up',
                          style: myFonts(16, textColorLight, FontWeight.w700),
                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Your email address',style: myFonts(16,textColorDeep,FontWeight.w400),),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                   prefixIcon: Icon(Icons.email_outlined,color: textColorDeep,),
                      labelText: 'Enter your email address',
                    labelStyle: myFonts(16,textColorDeep,FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: textColorDeep),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Your password',style: myFonts(16,textColorDeep,FontWeight.w400),),
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key_outlined,color: textColorDeep,),
                    labelText: 'Enter Your password',
                    labelStyle: myFonts(16,textColorDeep,FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: textColorDeep),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                CustomeButton(
                  onTap: () {
                    AuthHelper().login(email.text, password.text, context);
                    Get.to(BottomNavHome());
                  },
                  size: Get.height * 0.08,
                  widget: Text(
                    'Login',
                    style: myFonts(17, textColorLight, FontWeight.w600),
                  ),
                ),
                SizedBox(height: Get.height*0.03,),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Get.to(RecoverPassword());
                      },
                      child: Text(
                        'Forgot Your Password',
                        style: myFonts(16, textColorLight, FontWeight.w700),
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
