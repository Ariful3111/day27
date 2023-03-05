import 'package:day27/Widgets/Fonts.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
   CustomeButton({Key? key,  this.title,required this.onTap, this.size,this.isOutline, this.widget}) : super(key: key);
String ? title;
VoidCallback onTap;
bool ?isOutline;
double ? size;
Widget ? widget;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isOutline==null? buttonColor: backgroundColor,
      height: size,
      minWidth: double.infinity,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
        side: BorderSide(
          color: isOutline==null?buttonColor:textColorLight
        ),
      ),
      onPressed:  onTap,
      child: widget,
    );
  }
}
