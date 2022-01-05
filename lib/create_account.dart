import 'package:flutter/material.dart';
import 'package:login_test/components/rounded_button.dart';
import 'package:login_test/constants.dart';
import 'package:login_test/verify_phone.dart';

import 'components/input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Create_Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width/12.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 30,
              ),
              Text('Create \nAccount',
                  style: TextStyle(
                      fontSize: size.width/13.7,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor)),
              SizedBox(
                height: size.width/13.7,
              ),
              Text('your Legal Name', style: TextStyle(color: kPrimaryColor)),
              RoundedInputField(
                hintText: "John smith",
                onChanged: (value) {},
              ),
              Text('Phone Number', style: TextStyle(color: kPrimaryColor)),
              RoundedInputField(
                hintText: "+45 123 123 123",
                onChanged: (value) {},
              ),
              Text('Email Address', style: TextStyle(color: kPrimaryColor)),
              RoundedInputField(
                hintText: "example@gmail.com",
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Create Account",
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
            ],
          ),
        ),
      ),
    );
  }
}
