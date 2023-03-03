import 'package:day27/Onboarding/Onboarding1.dart';
import 'package:day27/Widgets/Button.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.3,
            ),
            Card(
              color: cardColor,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  "assets/icons/SplashIcon.svg",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "RANCANG",
              style: myFonts(36, textColorLight, FontWeight.w700),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              "Your Personal Task Manager",
              style: myFonts(17, textColorLight, FontWeight.w400),
            ),
            SizedBox(
              height: Get.height * 0.240,
            ),
            CustomeButton(
              onTap: () {
                Get.to(Onboarding1(),
                transition: Transition.fade,
                  duration: Duration(seconds: 2),
                );
              },
              size: Get.height * 0.09,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Getting Started',
                    style: myFonts(17, textColorLight, FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: textColorLight,
                    size: 30,
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              height: Get.height * 0.01,
              width: Get.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
