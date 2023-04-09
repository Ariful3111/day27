import 'package:day27/Bottom_Nav/Bottom_Nav_Home.dart';
import 'package:day27/Bottom_Nav/Screens/Home.dart';
import 'package:day27/Onboarding/Spalash.dart';
import 'package:day27/Screens/cached_network_image.dart';
import 'package:day27/Screens/carousel.dart';
import 'package:day27/Screens/shared_preferences.dart';
import 'package:day27/User_Auth/Sign_Up.dart';
import 'package:day27/Widgets/Fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: BottomNavHome(),
    );
  }
}

