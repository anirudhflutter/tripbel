import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoardContent extends StatelessWidget {
   const OnBoardContent({
    Key? key,
    this.isTop = true,
    required this.mainTitle,
    required this.subTitle,
  }) : super(key: key);

  final bool isTop;
  final String mainTitle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 6.h),
          child: Align(
            alignment: isTop ? Alignment.topCenter : Alignment.bottomCenter,
            child: ListTile(
              title: Text(
                mainTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.sp,
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              subtitle: Text(
                subTitle,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17.sp, color: Colors.black),
              ),
            ),
          ),
        ),
        Align(
          alignment: isTop ? Alignment.bottomCenter : Alignment.topCenter,
          child: Image.asset(
            'assets/onboard.jpg',
            fit: BoxFit.fitHeight,
            height: 40.h,
          ),
        ),
      ],
    );
  }
}
