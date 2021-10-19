import 'package:flutter/material.dart';
import 'package:lazzypay/presentation/widgets/myfield_widget.dart';
import 'package:sizer/sizer.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/toplogo.png'),
              Padding(
                padding: EdgeInsets.only(top: 3.h, left: 2.w),
                child: Text(
                  'FORGET PASSWORD',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                ),
              ),
              MyField(
                hintText: 'Email/Mobile',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: 6.h,
              margin: EdgeInsets.symmetric(vertical: 7.h, horizontal: 4.w),
              decoration: BoxDecoration(
                  color: Colors.red.shade700,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Get OTP',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 11.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
