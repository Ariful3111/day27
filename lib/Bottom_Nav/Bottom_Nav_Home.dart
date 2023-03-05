import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:day27/Bottom_Nav/Screens/Add.dart';
import 'package:day27/Bottom_Nav/Screens/Add_Project.dart';
import 'package:day27/Bottom_Nav/Screens/Calendar.dart';
import 'package:day27/Bottom_Nav/Screens/Home.dart';
import 'package:day27/Bottom_Nav/Screens/Profile.dart';
import 'package:day27/Screens/Global%20Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavHome extends StatelessWidget {
  Controller controller=Controller();
  static List _pages=[
    Home(),
    Add_Project(),
    Calender(),
    Profile(),
    Add(),
  ];
  List<TabItem> items = [
    TabItem(
      icon: Icons.home,

    ),
    TabItem(
      icon: Icons.account_box,

    ),
    TabItem(
      icon: Icons.document_scanner,

    ),
    TabItem(
      icon: Icons.shopping_cart_outlined,

    ),
    TabItem(
      icon: Icons.search_sharp,
    ),
  ];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 8,left: 8, bottom: 8),
        child: BottomBarCreative(
          items: items,
          backgroundColor: Color(0xFF111526),
          color: Colors.white,
          colorSelected: Color(0xFF918AE3),
          borderRadius: BorderRadius.circular(20),
          indexSelected: currentindex,
          onTap: (int index){
            controller.OnTap(index);
          },
        ),
      ),
    );
  }
}

class Controller extends GetxController{
  OnTap(int index){
    BottomNavHome().currentindex=index;
    update();
  }
}