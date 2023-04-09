import 'package:day27/User_Auth/Log_In.dart';
import 'package:day27/User_Auth/Sign_Up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthHelper {

  final box = GetStorage();

  Future registration(String emailAddress, String password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: emailAddress, password: password);

      var authCredential = userCredential.user;
      if (authCredential!.uid.isNotEmpty) {
        Fluttertoast.showToast(msg: 'Registration Successful');
        box.write('uid', authCredential.uid);
        Get.to(SignUP());
      } else {
        print("sign up failed");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error is: $e');
    }
  }

  Future login(String emailAddress, String password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      var authCredential = userCredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        Fluttertoast.showToast(msg: 'Login Successfull');
        box.write('uid', authCredential.uid);
        Get.to(LogIn());
      } else {
        print("sign up failed");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error is: $e');
    }
  }


// Future signup(email, password, context) async {
  //   try {
  //     final UserCredential credential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //     if (credential.user!.uid.isNotEmpty) {
  //       Get.put(SignUP());
  //     } else {
  //       Fluttertoast.showToast(
  //           msg: "Not Valid",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       Fluttertoast.showToast(
  //           msg: "Weak Password",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //     } else if (e.code == 'email-already-in-use') {
  //       Fluttertoast.showToast(
  //           msg: "The Account Already Exists",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //     }
  //   }
  // }
  //
  // Future signin(email, password, context) async {
  //   try {
  //     final credential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: password);
  //     if (credential.user!.uid.isNotEmpty) {
  //       Get.put(SignUP());
  //     } else {
  //       Fluttertoast.showToast(
  //           msg: "Not Valid",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       Fluttertoast.showToast(
  //           msg: "user-not-found",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //     } else if (e.code == 'wrong-password') {
  //       Fluttertoast.showToast(
  //           msg: "wrong-password",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //     }
  //   }
  // }
}
