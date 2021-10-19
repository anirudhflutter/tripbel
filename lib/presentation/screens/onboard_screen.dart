import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lazzypay/const.dart';
import 'package:lazzypay/presentation/widgets/onboard_content_widget.dart';

import 'login_screen.dart';

class OnBoardScreen extends StatelessWidget {
  OnBoardScreen({
    key,
  }) : super(key: key);
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          if (index == 2) {
            Timer(
                const Duration(seconds: 2),
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (__) => const LogInScreen())));
          }
        },
        children:  [
          OnBoardContent(
            isTop: true,
            subTitle: testWords.toUpperCase(),
            mainTitle: 'PLAN A TRIP',
          ),
          OnBoardContent(
            isTop: false,
            subTitle: testWords.toUpperCase(),
            mainTitle: 'Book Flight',
          ),
          OnBoardContent(
            isTop: true,
            subTitle: testWords.toUpperCase(),
            mainTitle: 'Let\'s JOURNEY',
          ),
        ],
      ),
    );
  }
}
