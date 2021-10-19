import 'package:flutter/material.dart';
import 'package:lazzypay/presentation/screens/onboard_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          home:  OnBoardScreen(),
        );
      },
    );
  }
}
