import 'package:flutter/material.dart';
import 'package:login_test/constants.dart';


class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({

    required this.child,
  }) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.width/41.1),
      padding: EdgeInsets.symmetric(horizontal: size.width/20.5, vertical: size.width/82),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(size.width/14),
      ),
      child: child,
    );
  }
}