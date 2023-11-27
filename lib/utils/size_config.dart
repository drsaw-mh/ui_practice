import 'package:flutter/material.dart';

///https://medium.com/flutter-community/flutter-effectively-scale-ui-according-to-different-screen-sizes-2cb7c115ea0a

class SizeConfig {
  static late MediaQueryData _mediaQueryData;

  ///width & height
  static late double screenWidth;
  static late double screenHeight;

  ///divided by 1000
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  ///you must call from init page (example: splash.dart)
  static init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 1000;
    blockSizeVertical = screenHeight / 1000;
  }

  ///status bar height
  static double get statusbarH => _mediaQueryData.padding.top;

  ///default app bar height
  static double get appbarH => AppBar().preferredSize.height;
}

extension SizeExtension on num {
  get h => SizeConfig.blockSizeVertical * this;
  get w => SizeConfig.blockSizeHorizontal * this;

  //for scaling text
  get fs => (SizeConfig.screenWidth / 500) * this;
}
