import 'dart:math';

import 'package:day27/Screens/Global%20Controller.dart';
import 'package:day27/User_Auth/Log_In.dart';
import 'package:day27/User_Auth/Sign_Up.dart';
import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding1 extends StatelessWidget {

 GlobalController ? onbordcontroller;
 PageController pageController=PageController();
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
            padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
            child: PageView.builder(
              controller: pageController,
              itemCount: OnboardingList.length,
              onPageChanged: (int i){
                onbordcontroller!.onpagechange(i);
              },
              itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: Get.height*0.5,
                    // ),
                    Spacer(),
                    Text('${OnboardingList[index]}',
                      style: myFonts(36,textColorLight,FontWeight.w700),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          OnboardingList.length,
                              (index) => buildDot(index, context),
                        ),
                      ),
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
                );
              },


            ),
          ),
        ],
      ),
    );
  }
}

Container buildDot(int index, BuildContext context) {

  return Container(
    height: 10,
    width: currentIndex == index ? 35 : 20,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blueAccent,
    ),
  );
}

class SlideDot extends StatelessWidget {
  late bool isActive;
  SlideDot(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 10 : 8,
      width: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
