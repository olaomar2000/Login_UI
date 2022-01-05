import 'package:flutter/material.dart';
import 'package:login_test/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const RoundedButton({
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.width/41.1),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size.width/14.8),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
