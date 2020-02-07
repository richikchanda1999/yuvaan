import 'package:flutter/material.dart';
import 'package:yuvaan/support.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView(
          controller: controller,
          onPageChanged: ((i) {
            controller.animateToPage(i,
                duration: Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn);
          }),
          children: <Widget>[
            ScrollPage(
                header: "Contact Us",
                body:
                """Shantnu Bhalla\nPhone:+91 6001013283\nCore Team Member\n\nNeelabh Shukla\nPhone: +91 7737732899\nCore Team Member\n\nLocation\nIIIT Guwahati, Bongora, Guwahati 781015\n\nReach us at : yuvaan@iiitg.ac.in\nOur website:iiitg.ac.in/yuvaan2k19""",)
          ],
        ),
      ),
    );
  }
}
