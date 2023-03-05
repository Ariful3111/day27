import 'package:day27/User_Auth/Sign_Up.dart';
import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RecoverPassword extends StatelessWidget {
  TextEditingController email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
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
              SizedBox(height: Get.height*0.02,),
              CustomeButton(
                onTap: () {},
                size: Get.height * 0.08,
                widget: Text(
                  'Continue',
                  style: myFonts(17, textColorLight, FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
