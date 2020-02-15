import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yuvaan/UI/AboutUs.dart';
import 'package:yuvaan/UI/ContactUs.dart';
import 'package:yuvaan/UI/Sponsorship.dart';
import 'package:yuvaan/UI/Surveys.dart';
import 'package:yuvaan/UI/VisionAndAim.dart';

import 'UI/PastSponsors.dart';

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
    TextStyle(fontFamily: "Montserrat-Medium", fontSize: sp(35));
TextStyle get bodyStyle =>
    TextStyle(fontFamily: "AveriaSansLibre-Regular", fontSize: sp(16));

class ScrollPage extends StatelessWidget {
  String header, body;
  ScrollPage({this.header, this.body});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(sp(30.0)),
      margin: EdgeInsets.all(sp(30.0)),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(offset: Offset(-6, -6), blurRadius: sp(16), color: light),
            BoxShadow(offset: Offset(6, 6), blurRadius: sp(16), color: dark),
          ],
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(sp(15.0)))),
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

List<Widget> pages = <Widget>[
  AboutUs(),
  VisionAndAim(),
  Sponsorship(),
  PastSponsors(),
  Surveys(),
  ContactUs()
];

List<String> pageTitle = <String>[
  "About Us",
  "Vision And Aim",
  "Sponsorship",
  "Our past sponsors",
  "Surveys",
  "Contact Us"
];

var backgroundColor = Color(0xffe0e5ec);
var light = Color(0xffffffff).withOpacity(0.5);
var dark = Color(0xffa3b1c6);

enum PastSponsorsList {
  AMTRON,
  BHARAT_BASS,
  GRATIA_TECHNOLOGIES,
  INNOVATION,
  GPLUS,
  ZOOMCAR,
  TRIPURA_TIMES,
  FITNESS_CULTURE,
  PIZZA_HUT,
  BASKIN_ROBBINS,
  SUGAR_RUSH,
  PARALLEL_UNIVERSE,
  COUNTER_CULTURE_CAMPUS,
  THE_SOULED_STORE,
  HACKEREARTH,
  POPTALES,
  BINGO
}

Map<PastSponsorsList, String> paths = {
  PastSponsorsList.AMTRON: "assets/past_sponsors_logo/am.jpg",
  PastSponsorsList.BHARAT_BASS: "assets/past_sponsors_logo/9xm.png",
  PastSponsorsList.GRATIA_TECHNOLOGIES: "assets/past_sponsors_logo/GT.png",
  PastSponsorsList.INNOVATION: "assets/past_sponsors_logo/gadget.jpg",
  PastSponsorsList.GPLUS: "assets/past_sponsors_logo/Gplus.png",
  PastSponsorsList.ZOOMCAR: "assets/past_sponsors_logo/zoomcar.jpeg",
  PastSponsorsList.TRIPURA_TIMES: "assets/past_sponsors_logo/tt.png",
  PastSponsorsList.FITNESS_CULTURE: "assets/past_sponsors_logo/2.jpg",
  PastSponsorsList.PIZZA_HUT: "assets/past_sponsors_logo/ph.png",
  PastSponsorsList.BASKIN_ROBBINS: "assets/past_sponsors_logo/br.png",
  PastSponsorsList.SUGAR_RUSH: "assets/past_sponsors_logo/sr.png",
  PastSponsorsList.PARALLEL_UNIVERSE: "assets/past_sponsors_logo/pu.jpg",
  PastSponsorsList.COUNTER_CULTURE_CAMPUS: "assets/past_sponsors_logo/cc.png",
  PastSponsorsList.THE_SOULED_STORE: "assets/past_sponsors_logo/gift.png",
  PastSponsorsList.HACKEREARTH: "assets/past_sponsors_logo/he.png",
  PastSponsorsList.POPTALES: "assets/past_sponsors_logo/poptales.png",
  PastSponsorsList.BINGO: "assets/past_sponsors_logo/bingo.png",
};

Map<PastSponsorsList, String> displayText = {
  PastSponsorsList.AMTRON: "Amtron",
  PastSponsorsList.BHARAT_BASS: "9xM Bharat Bass",
  PastSponsorsList.GRATIA_TECHNOLOGIES: "Gratia Technologies",
  PastSponsorsList.INNOVATION: "Innovation - A World Of Technology",
  PastSponsorsList.GPLUS: "GPlus - Guwahati\'s own English Weekly",
  PastSponsorsList.ZOOMCAR: "Zoomcar - Never Stop Living",
  PastSponsorsList.TRIPURA_TIMES: "Tripura Times",
  PastSponsorsList.FITNESS_CULTURE: "Fitness Partner",
  PastSponsorsList.PIZZA_HUT: "Pizza Hut",
  PastSponsorsList.BASKIN_ROBBINS: "Baskin Robbins",
  PastSponsorsList.SUGAR_RUSH: "Sugar Rush",
  PastSponsorsList.PARALLEL_UNIVERSE: "ParallelUniverse.in",
  PastSponsorsList.COUNTER_CULTURE_CAMPUS: "Counter Culture Campus",
  PastSponsorsList.THE_SOULED_STORE: "The Souled Store",
  PastSponsorsList.HACKEREARTH: "Hackerearth",
  PastSponsorsList.POPTALES: "Poptales - 100% pop culture",
  PastSponsorsList.BINGO: "Bingo Comedy Adda",
};

Map<PastSponsorsList, String> sponsorType = {
  PastSponsorsList.AMTRON: "Associate Partner",
  PastSponsorsList.BHARAT_BASS: "Music Partner",
  PastSponsorsList.GRATIA_TECHNOLOGIES: "Technical Partner",
  PastSponsorsList.INNOVATION: "Gadget Partner",
  PastSponsorsList.GPLUS: "Media Partner",
  PastSponsorsList.ZOOMCAR: "Mobility Partner",
  PastSponsorsList.TRIPURA_TIMES: "Media Partner",
  PastSponsorsList.FITNESS_CULTURE: "Fitness Partner",
  PastSponsorsList.PIZZA_HUT: "Food Partner",
  PastSponsorsList.BASKIN_ROBBINS: "Food Partner",
  PastSponsorsList.SUGAR_RUSH: "Food Partner",
  PastSponsorsList.PARALLEL_UNIVERSE: "Social Media Partner",
  PastSponsorsList.COUNTER_CULTURE_CAMPUS: "Brand and Sponsorship Consultants",
  PastSponsorsList.THE_SOULED_STORE: "Gift Partner",
  PastSponsorsList.HACKEREARTH: "Online Tech Partner",
  PastSponsorsList.POPTALES: "Merchandise Partner",
  PastSponsorsList.BINGO: "Entertainment Partner",
};

List<String> recentUpdatePath = <String>[
  "assets/past_sponsors_logo/carn.jpg",
  "assets/past_sponsors_logo/Gplus.png",
  "assets/past_sponsors_logo/guwahati_times.jpg",
  "assets/past_sponsors_logo/Prag_News.jpg",
  "assets/past_sponsors_logo/images.png",
  "assets/past_sponsors_logo/tt.png",
  "assets/past_sponsors_logo/pratidin_times.jpg",
  "assets/past_sponsors_logo/95fm.jpg"
];
List<String> recentUpdateName = <String>[
  "Carnival Cinemas",
  "GPlus",
  "The Guwahati Times",
  "Prag News",
  "The Shillong Times",
  "Tripura Times",
  "Pratidin Time",
  "95 FM Radio Mirchi"
];
List<String> recentUpdateType = <String>[
  "Screening",
  "Media",
  "Media",
  "Media",
  "Media",
  "Media",
  "Media",
  "Broadcasting"
];

String date = "Date : 20-22 March 2020";
