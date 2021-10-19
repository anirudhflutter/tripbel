import 'package:flutter/material.dart';
import 'package:lazzypay/const.dart';
import 'package:lazzypay/presentation/screens/login_screen.dart';
import 'package:lazzypay/presentation/widgets/myfield_widget.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/toplogo.png'),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 1.h, left: 2.w),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ),
            ),
          ),
          MyField(
            hintText: 'Full Name',
          ),
          MyField(
            hintText: 'Email/Mobile',
          ),
          MyField(
            hintText: 'D.O.B',
          ),
          MyField(
            hintText: 'Password',
            isPassword: true,
            secure: true,
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            height: 7.h,
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
            decoration: BoxDecoration(
                color: Colors.red.shade700,
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp),
            ),
          ),
          InkWell(
            onTap: () => pushAndRemovePage(context, const LogInScreen()),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.h, right: 2.w),
              child: Align(
                alignment: Alignment.center,
                child: Text.rich(TextSpan(
                    text: 'have an account ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp),
                    children: [
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              color: Colors.red.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp))
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
