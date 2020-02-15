import 'package:flutter/material.dart';
import 'package:yuvaan/support.dart';

class VisionAndAim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyScaffold()),
    );
  }
}

class MyScaffold extends StatefulWidget {
  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  var controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageView(
        controller: controller,
        onPageChanged: ((i) {
          controller.animateToPage(i,
              duration: Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn);
        }),
        children: <Widget>[
          ScrollPage(
              header: "Vision And Aim",
              body:
                  """Yuvaan was started 5 years ago, with a vision to provide a platform to the youth of the country to compete against each other and excel in their fields, to grow, to showcase their skills and give wings to their creativity. Year after year we have successfully lived up to our vision and we hope to continue to do the same. This year, Yuvaan is bigger than ever, with participation from more than 24 colleges all across north east."""),
        ],
      ),
    );
  }
}
