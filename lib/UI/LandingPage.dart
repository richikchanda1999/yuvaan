import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../support.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget with LandingPageStyle{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          MyStackWidget(
            start: 123.1,
            top: 72.4,
            width: 139.1,
            height: 117.3,
            child: Image.asset(
              "assets/logo.png",
              width: w(139.1),
              height: h(117.3),
            ),
          ),
          MyStackWidget(
            start: 30,
            end: 30,
            top: 264,
            height: 95,
            child: CarouselSlider.builder(
                scrollDirection: Axis.horizontal,
                viewportFraction: 1.0,
                autoPlay: true,
                initialPage: 0,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayInterval: Duration(milliseconds: 1500),
                autoPlayCurve: Curves.easeInOut,
                itemCount: 10,
                itemBuilder: (_, i) {
                  return SponsorshipCard(index: i,);
                }),
          ),
        ],
      ),
    );
  }
}

class SponsorshipCard extends StatelessWidget with LandingPageStyle{
  int index;
  SponsorshipCard({this.index = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: w(80),
            height: h(90),
            child: Container(
              child: Image.asset("assets/past_sponsors_logo/${imagePaths[index]}"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(sp(10)),
                      bottomLeft: Radius.circular(sp(10)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w(10), right: w(10)),
            child: Text(imagePaths[index].substring(0, imagePaths[index].indexOf("."))),
          )
        ],
      ),
      margin: EdgeInsets.only(
          top: h(8), bottom: h(8), left: w(8), right: w(8)),
      decoration: BoxDecoration(
          //color: backgroundColor,
//          boxShadow: <BoxShadow>[
//            BoxShadow(color: darkerShadow, offset: Offset(2, 2), blurRadius: sp(2)),
//            BoxShadow(color: lighterShadow, offset: Offset(-2, -2), blurRadius: sp(2))
//          ],
          borderRadius:
          BorderRadius.all(Radius.circular(sp(10)))),
    );
  }
}

