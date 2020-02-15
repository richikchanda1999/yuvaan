import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yuvaan/support.dart';

class PastSponsors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyScaffold()),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          MyStackWidget(
            start: 40,
            end: 40,
            top: 20,
            height: 30,
            child: Text(
              "OUR PAST SPONSORS",
              style:
                  TextStyle(fontFamily: "Montserrat-Light", color: Colors.black, fontSize: sp(30)),
            ),
          ),
          MyStackWidget(
            start: 30,
            top: 80,
            width: 150,
            height: 170,
            child: SponsorImage(
              path: paths[PastSponsorsList.AMTRON],
            ),
          ),
          MyStackWidget(
            start: 200,
            end: 30,
            top: 140,
            height: 120,
            child: Column(
              children: <Widget>[
                SponsorText(
                  priority: 1,
                  data: displayText[PastSponsorsList.AMTRON],
                ),
                SponsorType(
                  priority: 1,
                  type: sponsorType[PastSponsorsList.AMTRON],
                ),
              ],
            ),
          ),
          MyStackWidget(
            end: 30,
            top: 280,
            width: 150,
            height: 170,
            child: SponsorImage(
              path: paths[PastSponsorsList.BHARAT_BASS],
            ),
          ),
          MyStackWidget(
            end: 200,
            start: 30,
            top: 340,
            height: 120,
            child: Column(
              children: <Widget>[
                SponsorText(
                  priority: 1,
                  data: displayText[PastSponsorsList.BHARAT_BASS],
                ),
                SponsorType(
                  priority: 1,
                  type: sponsorType[PastSponsorsList.BHARAT_BASS],
                ),
              ],
            ),
          ),
          MyStackWidget(
            start: 30,
            end: 10,
            top: 480,
            bottom: 30,
            child: ListView.separated(
                padding: EdgeInsets.all(sp(8)),
                itemBuilder: (_, __) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                          width: w(120),
                          height: h(120),
                          child: SponsorImage(
                              path: paths[PastSponsorsList.values[__ + 2]])),
                      SizedBox(
                        width: w(190),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SponsorText(
                              data:
                                  displayText[PastSponsorsList.values[__ + 2]],
                            ),
                            SponsorType(
                              type:
                                  sponsorType[PastSponsorsList.values[__ + 2]],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (_, __) {
                  return Padding(padding: EdgeInsets.only(top: h(8)));
                },
                itemCount: PastSponsorsList.values.length - 2),
          )
        ],
      ),
    );
  }
}

class SponsorImage extends StatelessWidget {
  String path;
  SponsorImage({this.path});
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

class SponsorText extends StatelessWidget {
  int priority;
  String data;
  SponsorText({this.data, this.priority = 0});
  @override
  Widget build(BuildContext context) {
    return Text(data,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: "Righteous",
            fontSize: priority == 1 ? sp(25) : sp(20)));
  }
}

class SponsorType extends StatelessWidget {
  int priority;
  String type;
  SponsorType({this.type, this.priority = 0});
  @override
  Widget build(BuildContext context) {
    return Text(type,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: "AveriaSansLibre-Regular",
            fontSize: priority == 1 ? sp(20) : sp(15),
            color: Colors.black54));
  }
}
