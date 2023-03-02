import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myFonts(double size, [Color ? color, FontWeight ? fontweight]){
  return GoogleFonts.nunito(
    fontSize: size,
    color: color,
    fontWeight: fontweight,
  );
}

const Color textColorLight= Color(0xffF8F8F8);
const Color textColorDark=Color(0xffE9E9EB);
const Color cardColor=Color(0xff292B3E);
const Color backgroundColor=Color(0xff191A22);
const Color buttonColor=Color(0xff246BFD);