import 'package:flutter/material.dart';
import 'package:login_test/components/rounded_button.dart';

import 'constants.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.width/8.2, horizontal: size.width/12.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(

                  child: Container(
                    height: size.width/6.85,
                    width: size.width/6.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width/8.2),
                      color: kPrimaryLightColor,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: size.width/12.8,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Verify Phone',
                  style: TextStyle(
                    fontSize: size.width/13.7,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Code is send to ",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: size.width/22.8,
                    ),
                    children: [
                      TextSpan(
                        text: '+45 123 123 123',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width/22.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textFieldOTP(first: true, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: true),
                    ],
                  ),
                ],
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: " Didn't receive code? ",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: size.width/22.8,
                  ),
                  children: [
                    TextSpan(
                      text: 'Request again \n Get viacall ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width/22.8,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  RoundedButton(
                    text: "VERIFY AND CREATE ACCOUNT",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Otp();
                          },
                        ),
                      );
                    },
                  ),
                  Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      width: 70,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: kPrimaryColor),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: kPrimaryLightColor,
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: kPrimaryLightColor),
                borderRadius: BorderRadius.circular(50)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
