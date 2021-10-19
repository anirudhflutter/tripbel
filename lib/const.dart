import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String testWords =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled';

pushPage(context, Widget screen) {
  return Navigator.push(context, MaterialPageRoute(builder: (__) => screen));
}
pushAndRemovePage(context, Widget screen) {
  return Navigator.pushReplacement(context, MaterialPageRoute(builder: (__) => screen));
}
