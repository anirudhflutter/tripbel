import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignInOption extends StatelessWidget {
  const SignInOption({
    Key? key,
    required this.socialName,
    required this.socialIcon,
    required this.firstColor,
    required this.secondColor,
  }) : super(key: key);
  final String socialName;
  final IconData socialIcon;
  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 4.w),
      height: 5.h,
      decoration: BoxDecoration(
          color: firstColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 25.w,
            child: Icon(
              socialIcon,
              color: Colors.white,
              size: 18.sp,
            ),
            decoration: BoxDecoration(
                color: secondColor,
                borderRadius: const BorderRadius.horizontal(
                    right: Radius.circular(7), left: Radius.circular(7))),
          ),
          SizedBox(width: 4.w,),
          Text(
            'Continue with $socialName',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13.sp),
          ),
        ],
      ),
    );
  }
}
