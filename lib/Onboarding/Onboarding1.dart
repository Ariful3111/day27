import 'dart:math';

import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding1 extends StatelessWidget {

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
              children: [
                // SizedBox(
                //   height: Get.height*0.5,
                // ),
                Spacer(),
                Text('Update Progress\nYour Work for The\nTeam',
                style: myFonts(26,textColorLight,FontWeight.w700),
                ),
                CustomeButton(
                    onTap: (){},
                  size: Get.height*0.1,
                  widget: Text("Sign UP",
                  style: myFonts(17,textColorLight,FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: Get.height*0.02,
                ),
                CustomeButton(
                    onTap: (){},
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
