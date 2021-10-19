import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class MyField extends StatefulWidget {
  MyField({
    Key? key,
    required this.hintText,
    this.secure = false,
    this.isPassword = false,
  }) : super(key: key);
  final String hintText;
  final bool isPassword;
  bool secure;

  @override
  State<MyField> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      child: TextFormField(
        obscuringCharacter: '*',
        obscureText: widget.secure,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.3.h),
          hintText: widget.hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red.shade700, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black, width: 2)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(width: 2,)),
          suffixIconConstraints: BoxConstraints(minWidth: 18.w),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(!widget.secure
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,color: Colors.black,size: 18.sp,),
                  onPressed: () {
                    setState(() {
                      widget.secure = !widget.secure;
                    });
                  },
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
