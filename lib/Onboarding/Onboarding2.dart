import 'dart:math';

import 'package:day27/User_Auth/Log_In.dart';
import 'package:day27/User_Auth/Sign_Up.dart';
import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
            child: Transform.rotate(
              angle: pi/5,
              child: Container(
                height: 400,
                width: 480,
                decoration: BoxDecoration(
                  color: Color(0xFF8E8E93),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: Get.height*0.5,
                // ),
                Spacer(),
                Text('Create a Task and\nAssign it to Your\nTeam Members',
                  style: myFonts(36,textColorLight,FontWeight.w700),
                ),
                SizedBox(height: Get.height*0.150,),
                CustomeButton(
                  onTap: (){
                    Get.to(SignUP());
                  },
                  size: Get.height*0.1,
                  widget: Text("Sign UP",
                    style: myFonts(17,textColorLight,FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: Get.height*0.02,
                ),
                CustomeButton(
                  onTap: (){
                    Get.to(LogIn());
                  },
                  isOutline: true,
                  size: Get.height*0.1,
                  widget: Text("Login",
                    style: myFonts(17,textColorLight,FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
