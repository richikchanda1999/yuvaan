import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../support.dart';
import 'LandingPage.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyScaffold()),
    );
  }
}

class MyScaffold extends StatefulWidget with LandingPageStyle {
  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> with TickerProviderStateMixin {
  AnimationController controller;
  Animation imageFade, buttonAppear;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    imageFade = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.000, 0.500)));
    buttonAppear = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.500, 1.000)));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          MyStackWidget(
            start: 30,
            end: 30,
            top: 280,
            height: 100,
            child: FadeTransition(
              opacity: imageFade,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  "assets/font yuvaan 2020.png",
                  width: w(290),
                  height: h(100),
                ),
              ),
            ),
          ),
          MyStackWidget(
              start: 30,
              end: 30,
              bottom: 30,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 1200),
                          pageBuilder: (_, __, ___) => Home()));
                },
                child: FadeTransition(
                  opacity: buttonAppear,
                  child: Container(
                    child: Center(
                        child: Text(
                      "Continue to App",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "Montserrat-Medium", fontSize: sp(20)),
                    )),
                    decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              offset: Offset(-6, -6),
                              blurRadius: sp(16),
                              color: light),
                          BoxShadow(
                              offset: Offset(6, 6),
                              blurRadius: sp(16),
                              color: dark),
                        ],
                        color: backgroundColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(sp(15.0)))),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
