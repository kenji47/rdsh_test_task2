
import 'package:flutter/cupertino.dart';

class SizeCalculator {
  final _mockupHeight = 812;
  final _mockupWidth = 375;

  late final double heightScale;
  late final double widthScale;

  SizeCalculator(BuildContext context){
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    if (isPortrait) {
      heightScale = MediaQuery.of(context).size.height / _mockupHeight;
      widthScale = MediaQuery.of(context).size.width / _mockupWidth;
    } else {
      heightScale = MediaQuery.of(context).size.height / _mockupWidth;
      widthScale = MediaQuery.of(context).size.width / _mockupWidth;
    }
  }
}