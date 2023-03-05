
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController{

  onpagechange(int index) {
    currentIndex = index;
    update();
  }
  @override
  void onInit(){
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentIndex < 2) {
        currentIndex++;
      } else {
        currentIndex --;
      }
      controller!.animateToPage(currentIndex,
          duration: Duration(seconds: 3), curve: Curves.easeIn);
    });
    super.onInit();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
PageController ? controller;
List OnboardingList=[
  'Update Progress\nYour Work for The\nTeam',
  'Create a Task and\nAssign it to Your\nTeam Members',
  'Get Notified when\nyou Get a New\nAssignment'
];

int currentIndex = 0;
