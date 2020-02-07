import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double leftOffset = 0.0,
    rightOffset = 0.0,
    bottomOffset = 0.0,
    topOffset = 0.0;

Function(num) get w => ScreenUtil().setWidth;
Function(num) get h => ScreenUtil().setHeight;
Function(num) get sp => ScreenUtil().setSp;

class MyStackWidget extends StatelessWidget {
  double start, width, top, height, end, bottom;
  Widget child;
  MyStackWidget(
      {this.start,
      this.width,
      this.top,
      this.height,
      this.end,
      this.bottom,
      this.child});
  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
        textDirection: TextDirection.ltr,
        start: (start != null) ? w(start - leftOffset) : null,
        width: (width != null) ? w(width + 5) : null,
        top: (top != null) ? h(top - topOffset) : null,
        height: (height != null) ? h(height + 10) : null,
        end: (end != null) ? w(end - rightOffset) : null,
        bottom: (bottom != null) ? h(bottom - bottomOffset) : null,
        child: child);
  }
}

var imagePaths = <String>[
  'Amtron.png',
  'Baskin Robbins.png',
  'Bharat Bass.png',
  'Bingo Comedy Adda.jpeg',
  'Counter Culture Campus.png',
  'G Plus.png',
  'Gratia.jpeg',
  'HackerEarth.png',
  'Pizza Hut.png',
  'Pop Tales.png',
  'The Souled Store.jpeg',
  'Tripura Times.png',
  'Zoom Car.png'
];

mixin LandingPageStyle {
  var backgroundColor = Color(0xffE6E4E4);
  var darkerShadow = Color(0xffDAD7D7);
  var lighterShadow = Color(0xffF3F2F2);
}
