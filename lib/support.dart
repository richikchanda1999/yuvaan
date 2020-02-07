import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yuvaan/UI/AboutUs.dart';
import 'package:yuvaan/UI/ContactUs.dart';
import 'package:yuvaan/UI/Sponsorship.dart';
import 'package:yuvaan/UI/VisionAndAim.dart';

double leftOffset = 0.0, rightOffset = 0.0, bottomOffset = 0.0, topOffset = 0.0;

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

TextStyle get headerStyle =>
    TextStyle(fontFamily: "Montserrat-Medium", fontSize: 35);
TextStyle get bodyStyle =>
    TextStyle(fontFamily: "AveriaSansLibre-Regular", fontSize: 16);

class ScrollPage extends StatelessWidget {
  String header, body;
  ScrollPage({this.header, this.body});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: LayoutBuilder(
        builder: (_, __) {
          var size = __.biggest;
          return Column(
            children: <Widget>[
              SizedBox(
                width: size.width,
                height: size.height * 0.35,
                child: Center(
                    child: Text(
                  header,
                  textAlign: TextAlign.center,
                  style: headerStyle,
                )),
              ),
              Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                      child: Center(
                          child: Text(
                    body,
                    textAlign: TextAlign.justify,
                    style: bodyStyle,
                  ))))
            ],
          );
        },
      ),
    );
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
  var landingPageBackgroundColor = Color(0xffE6E4E4);
  var darkerShadow = Color(0xffDAD7D7);
  var lighterShadow = Color(0xffF3F2F2);
}

var backgroundColor = Color(0xff003366);

List<Widget> pages = <Widget>[
  AboutUs(),
  VisionAndAim(),
  Sponsorship(),
  ContactUs()
];

List<String> pageTitle = <String>[
  "About Us",
  "Vision And Aim",
  "Sponsorship",
  "Contact Us"
];
