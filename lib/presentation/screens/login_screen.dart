import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lazzypay/const.dart';
import 'package:lazzypay/presentation/screens/forgot_password_screen.dart';
import 'package:lazzypay/presentation/screens/signup_screen.dart';
import 'package:lazzypay/presentation/widgets/myfield_widget.dart';
import 'package:lazzypay/presentation/widgets/signin_option_widget.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/toplogo.png',),
          Padding(
            padding: EdgeInsets.only(top: 0.4.h, left: 2.w),
            child: Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
            ),
          ),
          MyField(
            hintText: 'Email/Mobile',
          ),
          MyField(
            hintText: 'Password',
            isPassword: true,
            secure: true,
          ),
          GestureDetector(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (__) => const ForgetPasswordScreen())),
            child: Padding(
              padding: EdgeInsets.only(top: 1.h, right: 2.w),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 11.sp),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 7.h,
            margin: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
            decoration: BoxDecoration(
                color: Colors.red.shade700,
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 11.sp),
            ),
          ),
          const Spacer(),
          SignInOption(
            socialName: 'Facebook',
            socialIcon: FontAwesomeIcons.facebookF,
            firstColor: Colors.blue.shade800,
            secondColor: Colors.blue.shade900,
          ),
          SignInOption(
            socialName: 'Twitter',
            socialIcon: FontAwesomeIcons.twitter,
            firstColor: Colors.blue.shade400,
            secondColor: Colors.blue.shade600,
          ),
          SignInOption(
            socialName: 'Twitter',
            socialIcon: FontAwesomeIcons.googlePlusG,
            firstColor: Colors.red.shade200,
            secondColor: Colors.red.shade400,
          ),
          GestureDetector(
            onTap: ()=>pushAndRemovePage(context, const SignUpScreen()),
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.h, right: 2.w),
              child: Align(
                alignment: Alignment.center,
                child:
                Text.rich(TextSpan(text: 'don\'t have account ', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400, fontSize: 11.sp), children: [
                  TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                          color: Colors.red.shade700,
                          fontWeight: FontWeight.w600, fontSize: 13.sp))
                ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


