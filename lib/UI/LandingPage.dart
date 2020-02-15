import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../support.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyScaffold()),
    );
  }
}

class MyScaffold extends StatelessWidget with LandingPageStyle {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return WillPopScope(
      onWillPop: () async {
        Future.delayed(Duration(microseconds: 1));
        return false;
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: MyDrawer(),
        //backgroundColor: backgroundColor,
        body: Stack(
          children: <Widget>[
            MyStackWidget(
              start: 30,
              end: 30,
              top: 20,
              height: 100,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  "assets/font yuvaan 2020.png",
                  width: w(290),
                  height: h(100),
                ),
              ),
            ),
            MyStackWidget(
              start: 40,
              end: 40,
              top: 320,
              height: 30,
              child: Text(
                "RECENT UPDATES~",
                style: TextStyle(
                    fontFamily: "Montserrat-Light",
                    color: Colors.black,
                    fontSize: sp(22)),
              ),
            ),
            MyStackWidget(
              start: 50,
              end: 50,
              top: 210,
              height: 60,
              child: Center(
                child: RotateAnimatedTextKit(
                  text: [
                    "20th March 2020",
                    "21st March 2020",
                    "22nd March 2020"
                  ],
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                      fontFamily: "Montserrat-Medium",
                      color: Colors.black,
                      fontSize: sp(23)),
                ),
              ),
            ),
            MyStackWidget(
                start: 20,
                end: 20,
                top: 370,
                bottom: 20,
                child: ListView.separated(
                    padding: EdgeInsets.all(sp(8)),
                    itemBuilder: (_, __) {
                      return PresentSponsor(
                        sponsorName: recentUpdateName[__],
                        type: recentUpdateType[__],
                        path: recentUpdatePath[__],
                      );
                    },
                    separatorBuilder: (_, __) {
                      return Padding(padding: EdgeInsets.only(top: h(20)));
                    },
                    itemCount: recentUpdatePath.length)),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w(300),
      child: Drawer(
        child: ListView.separated(
            itemBuilder: (_, __) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => pages[__]));
                },
                title: Text(pageTitle[__]),
              );
            },
            separatorBuilder: (_, __) {
              return Divider();
            },
            itemCount: pageTitle.length),
      ),
    );
  }
}

class SponsorshipCard extends StatelessWidget with LandingPageStyle {
  int index;
  SponsorshipCard({this.index = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: w(80),
            height: h(90),
            child: Container(
              child:
                  Image.asset("assets/past_sponsors_logo/${imagePaths[index]}"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(sp(10)),
                      bottomLeft: Radius.circular(sp(10)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w(10), right: w(10)),
            child: Text(
                imagePaths[index].substring(0, imagePaths[index].indexOf("."))),
          )
        ],
      ),
    );
  }
}

class RecentUpdateImage extends StatelessWidget {
  String path;
  RecentUpdateImage({this.path});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(sp(15))),
          boxShadow: <BoxShadow>[
            BoxShadow(offset: Offset(-6, -6), blurRadius: sp(16), color: light),
            BoxShadow(offset: Offset(6, 6), blurRadius: sp(16), color: dark),
          ],
          image: (path != null)
              ? DecorationImage(image: ExactAssetImage(path), fit: BoxFit.fill)
              : null),
    );
  }
}

class RecentUpdateText extends StatelessWidget {
  String text1, text2, sponsorName, text3, type;
  RecentUpdateText(
      {this.text1, this.text2, this.sponsorName, this.text3, this.type});
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: text1,
              style: TextStyle(
                  fontFamily: "Montserrat-Regular",
                  fontSize: sp(13),
                  color: Colors.black)),
          TextSpan(
              text: sponsorName,
              style: TextStyle(
                  fontFamily: "Montserrat-SemiBold",
                  fontStyle: FontStyle.italic,
                  fontSize: sp(13),
                  color: Colors.black)),
          TextSpan(
              text: text2,
              style: TextStyle(
                  fontFamily: "Montserrat-Regular",
                  fontSize: sp(13),
                  color: Colors.black)),
          TextSpan(
              text: type,
              style: TextStyle(
                  fontFamily: "Montserrat-Regular",
                  fontSize: sp(13),
                  color: Colors.black)),
          TextSpan(
              text: text3,
              style: TextStyle(
                  fontFamily: "Montserrat-Regular",
                  fontSize: sp(13),
                  color: Colors.black))
        ]));
  }
}

class PresentSponsor extends StatelessWidget {
  String sponsorName, type, path;
  PresentSponsor({this.sponsorName, this.type, this.path});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
            width: w(120),
            height: h(120),
            child: RecentUpdateImage(path: path)),
        SizedBox(
          width: w(190),
          child: Padding(
            padding: EdgeInsets.all(sp(12)),
            child: RecentUpdateText(
              text1: "Yuvaan proudly presents ",
              sponsorName: sponsorName,
              text2: " as our ",
              type: type,
              text3: " Partner",
            ),
          ),
        )
      ],
    );
  }
}
