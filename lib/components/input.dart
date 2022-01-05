import 'package:flutter/material.dart';
import 'package:login_test/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;

  final ValueChanged<String> onChanged;

  const RoundedInputField({
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: HintColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
