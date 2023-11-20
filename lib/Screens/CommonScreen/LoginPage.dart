import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textstyleConstants.dart';
import '../../utils/helperWidget.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Onboarding_BackGround(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 20.h),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height:20.h,
                    width: 40.w,
                    child: Image.asset('assets/images/Cloverleaf-gif-video.gif'),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "CLOVERLEAF",
                    style: appTitleStyle,
                  ),
                  Text(
                    "BUILDING THE FUTURE OF MACHINE SERVICE",
                    style: appSubTitleStyle,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Login to your Account',
                      style: titleStyle,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  textFieldContainer(EmailController, context, "Email", null),
                  SizedBox(
                    height: 3.h,
                  ),
                  textFieldContainer(
                      PasswordController, context, "Password", null),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 50.w,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: appThemeColor,
                      shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
